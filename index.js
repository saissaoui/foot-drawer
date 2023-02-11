var express = require("express");

var app = express();
const path = require("path");
const bodyParser = require("body-parser"); // Middleware
const cookieParser = require("cookie-parser");
const sessions = require("express-session");
const oneDay = 1000 * 60 * 60 * 24;

let users = new Map();
users.set("abdelaziz", "jigflhhckdjdefdjmod");
users.set("user1", "!GyJ4B~@>4U3dC9P");
users.set("user2", "e}:'kx'p98+{GQeb");
users.set("user3", "P59N<6mVu)mc}S)*");
users.set("user4", "nU2c$,mkxW.B+9@x");
users.set("user5", "NcPm#6,9@8hv&nkF");
users.set("user6", "c44A-vydJ#/trR5:");
users.set("sofiane", "Ssap@1986");

var session;

app.use(
  sessions({
    secret: "thisismysecrctekeyfhrgfgrfrty84fwir767",
    saveUninitialized: true,
    cookie: { maxAge: oneDay },
    resave: false,
  })
);
app.use(bodyParser.urlencoded({ extended: false }));
app.use(express.urlencoded({ extended: true }));
app.use("/img", express.static(path.join(__dirname, "img")));
app.use("/lib", express.static(path.join(__dirname, "lib")));
app.use("/dist", express.static(path.join(__dirname, "dist")));
app.use(express.static(__dirname));
// parsing the incoming data
app.use(express.json());
app.use(cookieParser());

//serving public file

app.get("/", function (req, res) {
  verifyIfConnectedAndRedirecto(req, res, "/terrain1.html");
});
// Route to Login Page
app.get("/login", (req, res) => {
  res.sendFile(__dirname + "/login.html");
});
app.get("/terrain2", function (req, res) {
  verifyIfConnectedAndRedirecto(req, res, "/terrain2.html");

});

app.get("/terrain3", function (req, res) {
  verifyIfConnectedAndRedirecto(req, res, "/terrain3.html");
});

let port = process.env.PORT || 3000;
app.listen(port, function () {
  console.log("running");
});

app.post("/login", (req, res) => {
  const savedPassword = users.get(req.body.login);
  if (savedPassword) {
    if (req.body.password == savedPassword) {
      session = req.session;
      session.userid = req.body.login;
      res.sendFile(path.join(__dirname + "/terrain1.html"));
    } else {
      res.sendFile(__dirname + "/login.html");
    }
  } else {
    res.sendFile(__dirname + "/login.html");
  }
});

app.get('/logout',(req,res) => {
  req.session.destroy();
  res.redirect('/');
});

function verifyIfConnectedAndRedirecto(req, res, redirectTo) {
  session = req.session;
  if (session.userid) {
    res.sendFile(path.join(__dirname + redirectTo));
  } else
    res.sendFile("/login.html", { root: __dirname });
}
