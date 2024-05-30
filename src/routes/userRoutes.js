const express = require("express");
const { authenticateToken, authenticateUser } = require("../middlewares/authMiddleware");
const {
  userProfleID,
  userProfileSetup,
  getUserProfileData,
  userData,
  getAllPosts,
  userFeedBack,
} = require("../controllers/user_controllers");
const router = express.Router();

router.use(authenticateToken);
router.use(authenticateUser);

//Get User Profile Id
router.post("/get_user_profile_id", userProfleID);
//User Profile Setup
router.post("/user_profile_setup", userProfileSetup);
//User profile data
router.post("/get_user_profile_data", getUserProfileData);
//Get user Data
router.post("/get_user_data", userData);
//To Get all Posts
router.post("/get_all_posts", getAllPosts);

//User Feedback
router.post("/submit_user_feedback", userFeedBack);

module.exports = router;
