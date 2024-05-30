const allowedOrigins = ["https://event-link.vercel.app"];

const corsOptions = {
  origin: (origin, callback) => {
    if (allowedOrigins.includes(origin) || !origin) {
      callback(null, true);
    } else {
      callback(new Error("Not allowed by CORS"));
    }
  },
  credentials: true, // Add this line to allow credentials
};

module.exports = corsOptions;
