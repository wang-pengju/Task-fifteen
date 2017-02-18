var mysql=require('mysql');
var connection = mysql.createConnection({
    host: 'localhost',
    port: 3306,
    user: 'Ourtime',
    password: 'admin',
    database: 'baidunews'
});



module.exports = connection;