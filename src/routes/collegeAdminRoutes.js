const express = require("express");
const {
  authenticateToken,
  authenticateUser,
} = require("../middlewares/authMiddleware");
const {
  adminProfileSetup,
  adminProfileID,
  addPosts,
  getEditPostsData,
  particularPosts,
  putPostData,
  getAdminData,
  deletePosts,
  getAdminPosts,
  feedBack,
  getAdminProfileData,
} = require("../controllers/admin_controllers");
const router = express.Router();

router.use(authenticateToken);
router.use(authenticateUser);

router.post("/get_admin_id", adminProfileID);

// Profile setup endpoint
router.post("/profile_setup", adminProfileSetup);
router.post("/add_posts", addPosts);
router.post("/get_edit_post_data/:post_id", getEditPostsData);
router.post("/show_post/:post_id", particularPosts);
router.post("/edit_post", putPostData);
router.post("/get_admin_data", getAdminData);
router.delete("/delete_post", deletePosts);
router.post("/get_posts", getAdminPosts);
router.post("/submit_feedback", feedBack);
router.post("/get_admin_profile_data", getAdminProfileData);

//admin profile data

module.exports = router;
