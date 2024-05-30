const express = require("express");
const { login, signUp, logout } = require("../controllers/authController");
const { forgetPass, resetPass } = require("../controllers/otpControllers");
const router = express.Router();

router.post("/login", login);
router.post("/logout", logout);
router.post("/signup", signUp);
router.post("/forget_password", forgetPass);
router.post("/reset_password", resetPass);

module.exports = router;
