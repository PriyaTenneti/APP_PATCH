var express=require("express");
var bodyParser=require('body-parser'); 
var connection = require('./config');
var http= require('http');
var app = express();
var webagentController=require('./controllers/webagent_controller');

app.use(bodyParser.urlencoded({extended:true}));
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));
app.get('/', function (req, res) {  
   res.sendFile(__dirname + "/" + "customers.html" );  
})  
app.get('/phone',function(req,res){
  res.sendFile(__dirname+ "/" + "customers.html")
})


/* route to handle checking the db with phoneNumber */

app.post('/api/bot',webagentController.bot);

console.log(webagentController);
app.post('/controllers/webagent_controller', webagentController.bot);
app.listen(8012);