const pool = require("../db");
function getPhotos() {
  const query = "SELECT * FROM photos";
  const rows = pool.query(query);
  return rows;
}

module.exports = { getPhotos };
