//  "https://event-link.vercel.app"

const cors = require("cors");

const corsOptions = cors({
  origin: process.env.CORS_ORIGIN,
  methods: "GET,HEAD,PUT,PATCH,POST,DELETE",
  credentials: true,
});

module.exports = corsOptions;
