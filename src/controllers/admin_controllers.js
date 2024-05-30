const asyncHand = require("express-async-handler");
const { connection } = require("../config/dbConfig");

const adminProfileID = asyncHand((req, res) => {
  const uid = req.body.decryptedUID;

  const getAdminIdQuery = "SELECT admin_id FROM admin_profile WHERE uid = ?";
  connection.query(getAdminIdQuery, [uid], (err, result) => {
    if (err) {
      console.error("Error fetching admin_id:", err);

      res.status(500).json({ error: "Internal Server Error" });
    } else {
      if (result && result.length > 0) {
        const adminID = result[0].admin_id;
        res.status(200).json({ admin_id: adminID });
      } else {
        res.status(404).json({ error: "Admin ID not found" });
      }
    }
  });
});

const adminProfileSetup = asyncHand((req, res) => {
  const formData = req.body.updatedFormData;
  const uid = req.body.decryptedUID;

  const checkQuery = "SELECT * FROM admin_profile WHERE uid = ?";
  connection.query(checkQuery, [uid], (checkErr, checkResult) => {
    if (checkErr) {
      console.error("Error Checking Data:", checkErr);
      res.status(500).json({ error: "Internal Server Error" });
    } else {
      if (checkResult && checkResult.length > 0) {
        const updateQuery = "UPDATE admin_profile SET ? WHERE uid = ?";
        connection.query(
          updateQuery,
          [formData, uid],
          (updateErr, updateResult) => {
            if (updateErr) {
              console.error("Error Updating Data:", updateErr);
              res.status(500).json({ error: "Internal Server Error" });
            } else {
              console.log("Data updated successfully");
              res.status(200).json({ message: "Data Updated Successfully" });
            }
          }
        );
      } else {
        const insertQuery = "INSERT INTO admin_profile SET ?";
        connection.query(insertQuery, formData, (insertErr, insertResult) => {
          if (insertErr) {
            console.error("Error Inserting Data:", insertErr);
            res.status(500).json({ error: "Internal Server Error" });
          } else {
            const adminId = insertResult.insertId;
            console.log("Generated admin_id:", adminId);
            console.log("Data inserted successfully");
            res.status(200).json({
              message: "Data Inserted Successfully",
              admin_id: adminId,
            });
          }
        });
      }
    }
  });
});

const addPosts = asyncHand(async (req, res) => {
  console.log("Entering into addPosts");

  const formData = req.body.updatedFormData;
  const adminId = formData.admin_id;
  const uid = formData.uid;

  const insertQuery = `
    INSERT INTO add_posts (cover_img, event_name, event_desc, event_date, category_id, contact, email, google_form_link, venue, uid, admin_id, college_name)
    SELECT '${formData.cover_img}', '${formData.event_name}', '${formData.event_desc}', '${formData.event_date}', ${formData.category_id}, '${formData.contact}', '${formData.email}', '${formData.google_form_link}','${formData.venue}', ${uid}, ${adminId}, ap.college_name
    FROM admin_profile ap
    WHERE ap.admin_id = ${adminId} AND ap.uid = ${uid};
  `;

  connection.query(insertQuery, (err, result) => {
    if (err) {
      console.error("Error Inserting Data:", err);
      res.status(500).json({ error: "Internal Server Error" });
    } else {
      console.log("Data inserted successfully");
      res.status(201).json({
        message: "Data Inserted Successfully",
        post_id: result.insertId,
      });
    }
  });
});

const feedBack = asyncHand(async (req, res) => {
  const formData = req.body.updatedFormData;
  const adminId = formData.admin_id;
  const uid = formData.uid;

  const insertQuery = `
  INSERT INTO feedback (name, email, feedback_id, feedback_subject, feedback_desc, ratings, attachments, contact_preference_id, uid, admin_id, feedback_date)
  SELECT 
      '${formData.name}', 
      '${formData.email}', 
      '${formData.feedback_id}', 
      '${formData.feedback_subject}', 
      '${formData.feedback_desc}', 
      '${formData.ratings}', 
      '${formData.attachments}', 
      '${formData.contact_preference_id}', 
      ${uid}, 
      ${adminId}, 
      DATE(NOW())
  FROM admin_profile ap
  WHERE ap.admin_id = ${adminId} AND ap.uid = ${uid};
  `;

  connection.query(insertQuery, (err, result) => {
    if (err) {
      console.error("Error Inserting Data:", err);
      res.status(500).json({ error: "Internal Server Error" });
    } else {
      console.log("FeeBack Submitted successfully");
      res.status(200).json({ message: "FeeBack Submitted Successfully" });
    }
  });
});

const getEditPostsData = asyncHand((req, res) => {
  console.log("Entering into editPosts");
  const postID = req.params.post_id;

  const getPostQuery = "SELECT * FROM add_posts WHERE posts_id = ?";
  connection.query(getPostQuery, [postID], (err, postResult) => {
    if (err) {
      console.error("Error fetching post data:", err);
      res.status(500).json({ error: "Internal Server Error" });
    } else {
      const postData = postResult[0];
      if (!postData) {
        res.status(404).json({ error: "Post not found" });
      } else {
        res.status(200).json(postData);
      }
    }
  });
});

const particularPosts = asyncHand((req, res) => {
  const postID = req.params.post_id;

  const getPostQuery = "SELECT * FROM add_posts WHERE posts_id = ?";
  connection.query(getPostQuery, [postID], (err, postResult) => {
    if (err) {
      console.error("Error fetching post data:", err);
      res.status(500).json({ error: "Internal Server Error" });
    } else {
      const postData = postResult[0];
      if (!postData) {
        res.status(404).json({ error: "Post not found" });
      } else {
        res.status(200).json(postData);
      }
    }
  });
});

const putPostData = asyncHand((req, res) => {
  console.log("Entering into putPostData");
  const postID = req.body.postID;
  const formData = req.body.updatedFormData;

  console.log("FormData:", formData);

  const updateQuery =
    "UPDATE add_posts SET cover_img=?, event_name=?, event_desc=?, event_date=?, category_id=?, contact=?, email=?, google_form_link=?, venue=?, uid=?, admin_id=? WHERE posts_id = ?";

  const updateValues = [
    formData.cover_img,
    formData.event_name,
    formData.event_desc,
    formData.event_date,
    formData.category_id,
    formData.contact,
    formData.email,
    formData.google_form_link,
    formData.venue,
    formData.uid,
    formData.admin_id,
    postID,
  ];

  console.log("Update Query:", updateQuery);
  console.log("Update Values:", updateValues);

  connection.query(updateQuery, updateValues, (err, result) => {
    if (err) {
      console.error("Error updating post:", err);
      res.status(500).json({ error: "Internal Server Error" });
    } else {
      console.log("Post updated successfully", result);
      res.status(200).json({ message: "Post Updated Successfully" });
    }
  });
});

const getAdminData = asyncHand((req, res) => {
  const uid = req.query.uid;
  const adminId = req.query.admin_id;
  const adminDataQuery =
    "SELECT profile_img, college_name, contact, email FROM admin_profile WHERE uid = ? AND admin_id = ?";
  connection.query(adminDataQuery, [uid, adminId], (err, adminDataResults) => {
    if (err) {
      console.error("Error fetching admin data:", err);
      res.status(500).json({ error: "Internal Server Error" });
    } else {
      const adminData = adminDataResults[0];
      console.log("Fetched admin data:", adminData);
      res.status(200).json({ adminData });
    }
  });
});

const deletePosts = asyncHand((req, res) => {
  const postID = req.body.postID;

  const deleteQuery = "DELETE FROM add_posts WHERE posts_id = ?";

  connection.query(deleteQuery, [postID], (err, result) => {
    if (err) {
      console.error("Error deleting post:", err);
      res.status(500).json({ error: "Internal Server Error" });
    } else {
      console.log("Post deleted successfully");
      res.status(200).json({ message: "Post Deleted Successfully" });
    }
  });
});

const getAdminPosts = asyncHand((req, res) => {
  const uid = req.query.uid;
  const adminID = req.query.admin_id;
  const postsQuery =
    "SELECT * FROM add_posts WHERE uid = ? AND admin_id = ? ORDER BY POSTS_ID DESC";

  connection.query(postsQuery, [uid, adminID], (err, postsResults) => {
    if (err) {
      console.error("Error fetching posts:", err);
      res.status(500).json({ error: "Internal Server Error" });
    } else {
      res.status(200).json(postsResults);
    }
  });
});

const getAdminProfileData = asyncHand((req, res) => {
  const adminID = req.body.adminID;
  console.log("Admin Id from getAdminProfileData", adminID);
  const getAdminProfileDataQuery = `
  SELECT college_name, email, contact, address
  FROM admin_profile
  WHERE admin_id = ?
`;
  connection.query(getAdminProfileDataQuery, [adminID], (err, result) => {
    if (err) {
      console.error("Error fetching admin profile data:", err);
      res.status(500).json({ error: "Internal Server Error" });
    } else {
      if (result && result.length > 0) {
        const profileData = result[0];
        res.status(200).json(profileData);
      } else {
        res.status(404).json({ error: "Admin profile data not found" });
      }
    }
  });
});

module.exports = {
  adminProfileID,
  adminProfileSetup,
  addPosts,
  getEditPostsData,
  particularPosts,
  putPostData,
  getAdminData,
  deletePosts,
  getAdminPosts,
  feedBack,
  getAdminProfileData,
};
