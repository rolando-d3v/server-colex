import dotenv from "dotenv";
dotenv.config( {quiet: true});

export const var_env = {
  PORT: process.env.PORT || 4001,
  SECRET_TOKEN: process.env.SECRET_TOKEN  || "secreto" ,
  // cloudinary config
  CLOUD_NAME: process.env.CLOUD_NAME,
  API_KEY: process.env.API_KEY,
  API_SECRET: process.env.API_SECRET,
};

