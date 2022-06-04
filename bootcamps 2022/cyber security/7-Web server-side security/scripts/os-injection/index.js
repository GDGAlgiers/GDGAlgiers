const http = require("http");
const si = require("systeminformation");

var express = require("express");
var app = express();

const port = 8005;

app.get("/checkSite", (req, res) => {
  const queryData = req.query.url;
  si.inetChecksite(queryData).then((data) => {
    res.json(data);
  });
});

app.listen(port, () => console.log("port 8005"));
