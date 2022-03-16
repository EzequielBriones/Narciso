let createError = require("http-errors");
let express = require("express");
let path = require("path");
let cookieParser = require("cookie-parser");
let logger = require("morgan");

require("dotenv").config(); //cargamos los datos del archivo de variables de entorno

// conexion a base de datos
const mongoose = require("mongoose");

const uri = `mongodb+srv://${process.env.USER}:${process.env.PASS}@narciso.voecy.mongodb.net/${process.env.DBNAME}?retryWrites=true&w=majority`;
mongoose
  .connect(uri)
  .then(() => console.log("Base de datos conectada"))
  .catch((err) => console.log(err));

let indexRouter = require("./routes/index");
let contactRouter = require("./routes/contact");
let galleryRouter = require("./routes/gallery");

let app = express();

// view engine setup
app.set("views", path.join(__dirname, "views"));
app.set("view engine", "hbs");

app.use(logger("dev"));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, "public")));

app.use("/", indexRouter);
app.use("/contact", contactRouter);
app.use("/gallery", galleryRouter);

// catch 404 and forward to error handler
app.use("*", function (req, res, next) {
  res.send("404 Not Found");
});

module.exports = app;
