"use strict";
const express = require("express");
const router = express.Router();
// const photosModel = require("../models/photosModel");
const photo = require("../models/photo.js");

/* GET home page. */
// router.get("/", async (req, res, next) => {
//   const photos = await photosModel.getPhotos();
//   res.render("gallery", { photos });
// });

router.get("/", async (req, res) => {
  try {
    const arrayPhotosDB = await photo.find();
    res.render("gallery", { arrayPhotosDB });
  } catch (error) {
    console.log(error);
  }
});

module.exports = router;
