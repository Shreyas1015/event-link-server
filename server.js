const express = require("express");
const cookieParser = require("cookie-parser");
const AdminRoutes = require("./src/routes/AdminRoutes");
const userRoutes = require("./src/routes/userRoutes");
const authRoutes = require("./src/routes/authRoutes");
const collegeAdminRoutes = require("./src/routes/collegeAdminRoutes");
const corsOptions = require("./src/middlewares/corsMiddleware");
const port = 5000;
const app = express();

// MiddleWares
app.use(express.json());
app.use(corsOptions);
app.use(cookieParser());

//Routes
app.use("/auth", authRoutes);
app.use("/admin", AdminRoutes);
app.use("/user", userRoutes);
app.use("/c-admin", collegeAdminRoutes);

app.listen(port, () => {
  console.log("Server Is Running on PORT :", port);
});
