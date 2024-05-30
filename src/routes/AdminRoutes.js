const express = require("express");
const {
  authenticateToken,
  authenticateUser,
} = require("../middlewares/authMiddleware");
const {
  getAdminCount,
  getUsersCount,
  getAllPostsCount,
  getAllFeedbackCount,
  getAdminTeamData,
  deleteAdmin,
  getIndividualAdminTeamData,
  postIndividualAdminTeamData,
  getUserTeamData,
  deleteUser,
  getIndividualUserTeamData,
  postIndividualUserTeamData,
  getAllClientData,
  deleteClient,
  addClient,
  getAllFeedbacks,
  getResolvedFeedbacks,
  updateFeedback,
  updateUserType,
  recentFeedbacks,
  barGraph,
  pieChart,
  lineChart,
} = require("../controllers/developer_controllers");
const router = express.Router();

router.use(authenticateToken);
router.use(authenticateUser);

router.post("/get_no_of_admins", getAdminCount);

//Count of users
router.post("/get_no_of_users", getUsersCount);

//Count of posts
router.post("/get_no_of_posts", getAllPostsCount);

//Count of feedbacks
router.post("/get_no_of_feedbacks", getAllFeedbackCount);

//Admin Team Data
router.post("/getAdminTeamData", getAdminTeamData);

// Delete Post
router.delete("/delete_admin/:admin_id/:uid", deleteAdmin);

//Get Individual Admin Data
router.post(
  "/getIndividualAdminTeamData/:admin_id",
  getIndividualAdminTeamData
);

//Update Individual Admin Data
router.post("/postIndividualAdminTeamData", postIndividualAdminTeamData);

// User Team Data including Excel and CSV formats
router.post("/getUserTeamData", getUserTeamData);

// Delete Post
router.delete("/delete_user/:user_profile_id/:uid", deleteUser);

//Get Individual User Data
router.post(
  "/getIndividualUserTeamData/:user_profile_id",
  getIndividualUserTeamData
);

//Update Individual User Data
router.post("/postIndividualUserTeamData", postIndividualUserTeamData);

//User Team Data
router.post("/getAllClientData", getAllClientData);

// Delete Post
router.delete("/delete_client/:uid", deleteClient);

//Add Client
router.post("/add_client", addClient);

//get all feedbacks
router.post("/get_all_feedbacks", getAllFeedbacks);

//get resolved feedbacks
router.post("/get_resolved_feedbacks", getResolvedFeedbacks);

//update feedback
router.put("/update_feedback/:fid", updateFeedback);

//update user type
router.put("/update_user_type/:uid", updateUserType);

//get recent feedbacks
router.post("/get_recent_feedbacks", recentFeedbacks);

//bar graph
router.post("/getBarGraph", barGraph);

//pie chart
router.post("/getPieChart", pieChart);

//line chart
router.post("/getLineChart", lineChart);

module.exports = router;
