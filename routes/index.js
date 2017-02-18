var express = require('express');
var router = express.Router();
var mysql=require('mysql');
var connection=require("./db.js");
/* 在主页获取新闻时的请求 */
router.get('/', function(req, res, next) {
  var newstype=req.query.newstype;
  connection.query('SELECT * FROM `news` WHERE `newstype`=? ORDER BY id ASC',[newstype],function(err,rows,fields){
    /* console.log(rows);*/
    res.json(rows);
  })
  
});

module.exports = router;
