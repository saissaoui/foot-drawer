var express = require("express");

var app = express();
const path = require("path");

app.use("/img", express.static(path.join(__dirname, "img")));
app.use("/lib", express.static(path.join(__dirname, "lib")));
app.use("/dist", express.static(path.join(__dirname, "dist")));

app.get("/", function (req, res) {
  res.sendFile(path.join(__dirname + "/index.html"));
});

app.get("/terrain2", function (req, res) {
  res.sendFile(path.join(__dirname + "/terrain2.html"));
});

app.get("/terrain3", function (req, res) {
  res.sendFile(path.join(__dirname + "/terrain3.html"));
});
let port = process.env.PORT || 3000;
app.listen(port, function () {
  console.log("running");
});
