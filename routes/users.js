var express = require('express');
var router = express.Router();
var mysql=require('mysql');
var connection=require("./db.js");
/*后台路由页面*/

//获取新闻
router.get('/getnews', function(req, res, next) {
    connection.query('SELECT * FROM `news` order by id desc',function(err,rows){
    	res.json(rows);
    });
});
//确认更新
router.post('/update',function(req,res){
	var newsid=req.body.id,
	    newstitle=req.body.title,
	    newstype=req.body.newstype,
        newsimg=req.body.newsimg,
	    newssrc=req.body.newssrc,
	    newstime=req.body.newstime;
	connection.query('UPDATE `news` SET `newstitle`=?,`newstype`=?,`newsimg`=?,`newssrc`=?,`newstime`=? WHERE `id`=?',[newstitle,newstype,newsimg,newssrc,newstime,newsid],function(err,rows){
        console.log(rows.changedRows);
	});
});
//模态框取值
router.get('/curnews',function(req,res){
    var newsid=req.query.newsid;
    connection.query('SELECT * FROM `news` WHERE `id`=?',[newsid],function(err,rows){
    	res.json(rows);
    });
});
//删除新闻
router.post('/delete',function(req,res){
    var newsid=req.body.newsid;
    connection.query('DELETE FROM `news` WHERE `news`.`id`=?',[newsid],function(err,result){
        console.log(result.affectedRows);
    });

});
//提交新闻
router.post('/insert',function(req,res){
    var newstitle=req.body.newstitle;
        newstype=req.body.newstype;
        newsimg=req.body.newsimg;
        newssrc=req.body.newssrc;
        newstime=req.body.newstime;
    connection.query('INSERT INTO `news` (`newstitle`,`newstype`,`newsimg`,`newssrc`,`newstime`) VAlUES (?,?,?,?,?)',[newstitle,newstype,newsimg,newssrc,newstime],function(err,result){
        if(!err){
            console.log(result.insertId);
        }
    });
});


module.exports = router;
