const mongoose = require("mongoose");
const Schema = mongoose.Schema;

const photoSchema = new Schema({
  author: String,
  image: String,
});

// modelo

const photo = mongoose.model("photo", photoSchema);

module.exports = photo;
