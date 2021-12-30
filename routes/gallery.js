"use strict";
const express = require("express");
const router = express.Router();
const photosModel = require("../models/photosModel");

/* GET home page. */
router.get("/", async (req, res, next) => {
  const photos = await photosModel.getPhotos();
  res.render("gallery", { photos });
});

module.exports = router;
