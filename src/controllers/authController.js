require("dotenv").config();
const asyncHand = require("express-async-handler");
const { connection } = require("../config/dbConfig");
const bcrypt = require("bcrypt");
const jwt = require("jsonwebtoken");
const generateSecretKey = require("../utils/generateSecretKey");
const generateRefreshToken = require("../utils/generateRefreshToken");
const { verifyRefreshToken } = require("../middlewares/authMiddleware");

const secretKey = process.env.DB_SECRET_KEY || generateSecretKey();

// Login Form
const login = asyncHand((req, res) => {
  const { email, password } = req.body;
  const searchQuery = "SELECT * from users where email = ?";
  try {
    connection.query(searchQuery, [email], async (err, results) => {
      if (err) {
        console.error("Error running the query : ", err);
        return res.status(500).json({ error: "Internal Server Error" });
      }
      if (results.length === 0) {
        return res.status(401).json({ message: "Invalid credentials" });
      } else {
        const user = results[0];
        const isPasswordValid = await bcrypt.compare(password, user.password);

        if (!isPasswordValid) {
          return res.status(401).json({ error: "Invalid Credentials" });
        }

        const uid = user.uid;
        const email = user.email;
        const user_type = user.user_type;

        const token = jwt.sign({ email }, secretKey, { expiresIn: "10h" });
        const refreshToken = generateRefreshToken(email);

        console.log("Generated Token:", token);
        console.log("Refresh Token:", refreshToken);

        res.cookie("token", token, { httpOnly: true });
        res.cookie("refreshToken", refreshToken, { httpOnly: true });

        res.status(200).json({
          message: "Logged in successfully",
          email,
          uid,
          user_type,
          isLogin: true,
        });
      }
    });
  } catch (error) {
    console.error("Error running the query : ", error);
    res.status(500).json({ error: "Internal Server Error" });
  }
});

const refresh = asyncHand(async (req, res) => {
  const refreshToken = req.cookies["refreshToken"];
  const password = req.body.password;
  const decryptedUID = req.body.decryptedUID;

  console.log("Data for refresh ", req.body, refreshToken);
  if (!refreshToken || !password) {
    console.error("Invalid request: Missing refresh token or password");
    return res
      .status(400)
      .json({ message: "Bad Request: Missing refresh token or password" });
  }

  const user = verifyRefreshToken(refreshToken);

  if (!user) {
    console.error("Invalid refresh token");
    return res
      .status(403)
      .json({ message: "Forbidden: Invalid refresh token" });
  }

  console.log("Received Refresh Token and Password");

  try {
    const query = "SELECT password FROM users WHERE uid = $1";
    const result = await pool.query(query, [decryptedUID]);

    if (result.rows.length === 0) {
      console.error("User not found");
      return res.status(404).json({ message: "User not found" });
    }

    const storedHashedPassword = result.rows[0].password;
    const passwordMatch = await bcrypt.compare(password, storedHashedPassword);

    if (!passwordMatch) {
      console.error("Incorrect password");
      return res
        .status(401)
        .json({ message: "Unauthorized: Incorrect password" });
    }

    const token = jwt.sign(user, secretKey, { expiresIn: "10h" });
    const newRefreshToken = generateRefreshToken(user.email);

    console.log("New Access Token:", token);
    console.log("New Refresh Token:", newRefreshToken);

    res.cookie("token", token, { httpOnly: true });
    res.cookie("refreshToken", newRefreshToken, { httpOnly: true });
    res.sendStatus(200);
  } catch (err) {
    console.error("Error querying database:", err);
    res.status(500).json({ message: "Internal Server Error" });
  }
});

const handleUserExists = (res) => {
  return res.status(400).json({ error: "User already exists" });
};

const handleServerError = (res, errMessage) => {
  console.error(errMessage);
  return res.status(500).json({ error: "Internal Server Error" });
};

const handleSuccess = (res, message) => {
  console.log(message);
  return res.status(200).json({ message });
};

const signUp = asyncHand(async (req, res) => {
  const formData = req.body;

  console.log("Form Data:", formData);

  // Check password complexity
  const passwordRegex =
    /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/;

  const passwordIsValid = passwordRegex.test(formData.password);
  console.log("Password is valid:", passwordIsValid);

  if (!passwordIsValid) {
    return res.status(400).json({
      error:
        "Password must be at least 8 characters long and contain at least one lowercase letter, one special character, one uppercase letter, and one number",
    });
  }

  try {
    const searchQuery = "SELECT * FROM users WHERE email = ?";

    connection.query(searchQuery, [formData.email], async (err, result) => {
      if (err) {
        return handleServerError(res, "Error running the query: " + err);
      }

      if (result.length > 0) {
        return handleUserExists(res);
      }

      const saltRounds = 10;
      const hashedPassword = await bcrypt.hash(formData.password, saltRounds);

      const insertQuery =
        "INSERT INTO users (email, password, user_type) VALUES (?, ?, 2)";
      connection.query(
        insertQuery,
        [formData.email, hashedPassword],
        (err, result) => {
          if (err) {
            return handleServerError(res, "Error inserting data: " + err);
          } else {
            return handleSuccess(res, "User Registered Successfully");
          }
        }
      );
    });
  } catch (error) {
    return handleServerError(res, "Error inserting data: " + error);
  }
});

const logout = asyncHand((req, res) => {
  res.clearCookie("token", { httpOnly: true });
  res.clearCookie("refreshToken", { httpOnly: true });

  res.status(200).json({ message: "Logout successful" });
});

module.exports = {
  login,
  signUp,
  logout,
};
