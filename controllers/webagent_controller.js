var connection = require('./../config');
module.exports.bot=function(req,res){
  var mobileNum=req.body.mobileNum;
  var accNum=req.body.mobileNum;
  console.log(mobileNum);
  connection.query('SELECT C.CUSTOMER_ID,C.FIRST_NAME,C.LAST_NAME, C.MOBILE_NUMBER,C.POST_CODE,C.DOB,C.DESK_PHONE_NUMBER,C.EMAIL_ADDRESS,B.ACCOUNT_NUMBER,B.Balance,B.InterestRate FROM customer C JOIN holdby HB on C.CUSTOMER_ID=HB.CUSTOMER_ID JOIN bank_account B ON HB.ACCOUNT_NUMBER=B.ACCOUNT_NUMBER where C.MOBILE_NUMBER =? or B.ACCOUNT_NUMBER=?',
     [mobileNum,accNum],function (error, results, fields) {
    if (!error) {
      res.json({
       status:true,
       message:"Hi",
       data: results
       });
      
     }else{
       console.log(error.message);
       res.json({
         status:false,
         message:"sORRY"
          });
        }
      }) 
}
  