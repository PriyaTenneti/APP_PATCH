var mysql      = require('mysql');
var connection = mysql.createConnection({
  host     : 'bankdb.cv12lbf74mrc.us-east-1.rds.amazonaws.com',
  user     : 'VFRMIT',
  password : 'Joanne123',
  database : 'customerdb'
});
connection.connect(function(err){
if(!err) {
    console.log("Database is connected");
} else {
    console.log("Error while connecting with database");
}
});
module.exports = connection;