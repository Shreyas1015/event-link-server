//  "https://event-link.vercel.app"

const cors = require("cors");

const corsOptions = cors({
  origin: "https://event-link.vercel.app",
  methods: "GET,HEAD,PUT,PATCH,POST,DELETE",
  credentials: true,
});

module.exports = corsOptions;
