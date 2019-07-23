const express=require('express');
//引入连接池(在上一级)
const pool=require('../pool.js');
const https = require('https');
const qs = require('querystring');
//创建路由器对象
var router=express.Router();
//导出路由器对象
module.exports=router;

//验证手机号是否被注册
router.get("/checkphone",(req,res)=>{
  var reguphone = req.query.reguphone;
  var uphone=req.query.uphone
  var sql="SELECT uid FROM cptx_user WHERE phone=?"
  pool.query(sql,[reguphone],(err,result)=>{
    if(err) throw err;
    //console.log(result.length);
    if(result.length==1){
      res.send({code:-1,msg:"该手机号已注册，请勿重复注册"})
    }else{
      res.send({code:1,msg:"该手机号为新用户"})
    }

  })
})
//用户登录时验证手机号是否存在
router.get("/checkphone1",(req,res)=>{
  var uphone=req.query.uphone;
  var sql="SELECT uid FROM cptx_user WHERE phone=?"
  pool.query(sql,[uphone],(err,result)=>{
    if(err) throw err;
    //console.log(result.length);
    if(result.length>0){
      res.send({code:-1,msg:"该手机号可用"})
    }else{
      res.send({code:1,msg:"该手机号尚未注册"})
    }
  })
})
//用户登录时验证密码是否正确
router.get("/checkupwd",(req,res)=>{
  var uphone=req.query.uphone
  var upwd=req.query.upwd;
  var sql="SELECT upwd FROM cptx_user WHERE phone=?"
  pool.query(sql,[uphone],(err,result)=>{
    if(err) throw err;
      res.send(result[0].upwd);
  })
})
//发送短信
router.get("/smsg",(req,res)=>{
  var that=res;
  //1:参数
  var reguphone = req.query.reguphone;
  var code = req.query.code;
  var apikey = 'bfa63dea8d3e34755f4df2078df1b210';
// 修改为您要发送的手机号码，多个号码用逗号隔开
var mobile = reguphone;
// 修改为您要发送的短信内容
var text = `【王亚楠test】您的验证码为${code}。如非本人操作，请忽略本短信`;
// 指定发送的模板编号
var tpl_id = 3108694;
// 查询账户信息https地址
var get_user_info_uri = '/v2/user/get.json';
// 智能匹配模板发送https地址
var sms_host = 'sms.yunpian.com';

send_sms_uri = '/v2/sms/single_send.json';

//发送短信*******
send_sms(send_sms_uri,apikey,mobile,text);


//发送短信*******
function send_sms(uri,apikey,mobile,text){
    var post_data = {  
    'apikey': apikey,  
    'mobile':mobile,
    'text':text,
    };//这是需要提交的数据  
    var content = qs.stringify(post_data);  
    post(uri,content,sms_host);
}


function post(uri,content,host){
    var options = {  
        hostname: host,
        port: 443,  
        path: uri,  
        method: 'POST',  
        headers: {  
            'Content-Type': 'application/x-www-form-urlencoded; charset=UTF-8'  
        }  
    };
    var req = https.request(options, function (res) {  
        //console.log('STATUS: ' + res.statusCode);  
        //console.log('HEADERS: ' + JSON.stringify(res.headers));  
        res.setEncoding('utf8');  
        res.on('data', function (chunk) {  
            console.log('BODY: ' + chunk);//BODY: {"code":0,"msg":"发送成功","count":1,"fee":0.05,"unit":"RMB","mobile":"17865318781","sid":43341669954}
            that.send(JSON.stringify(chunk));
        });  
    }); 
    console.log(code);
    //console.log("content"+content);
    req.write(content);  
    req.end();  
    //res.send({code:code,msg:"从前端获得的随机数"});//从前端获得的随机数 

    // res.write("信息发送成功");
    // res.end();
  }

});
//用户注册
router.get("/reg",(req,res)=>{
  var reguphone = req.query.reguphone;
  var regupwd = req.query.regupwd;
  //console.log(reguphone,regupwd);
    var sql="INSERT INTO cptx_user (upwd,phone) VALUES(?,?)";
    pool.query(sql,[regupwd,reguphone],(err,result)=>{
      if(err) throw err;
      if(result.affectedRows>1){
        res.send({code:1,msg:"注册成功"},)
      }
    });
});

//用户登录
router.get("/login",(req,res)=>{
  //1:参数
  var uphone = req.query.uphone;
  var upwd = req.query.upwd;
  //1.1:正则表达式验证用户名或密码
  //2:sql
var sql = "SELECT uid FROM cptx_user WHERE phone = ? AND upwd = ?";
  //3:json
  pool.query(sql,[uphone,upwd],(err,result)=>{
      if(err) throw err;
      if(result.length==0){
         res.send({code:-1,msg:"手机号或密码有误"});
      }else{
//??缺少一步
//将当前登录用户uid保存session
//result=[{id:1}]
         req.session.uid = 
         result[0].id;
         res.send({code:1,msg:"登录成功"});
      }
  })
});
//重置密码时删除指定手机号的数据
router.get("/update",(req,res)=>{
  var uphone=req.query.uphone;
  var newpwd=req.query.newpwd;
  var sql="UPDATE cptx_user SET upwd=? WHERE phone=?";
  pool.query(sql,[newpwd,uphone],(err,result)=>{
    if(err) throw err;
    //console.log(result);
    //console.log(result.changedRows);
    if(result.changedRows>0){
      res.send({code:1,msg:"密码重置成功"});
    }else{
      res.send({code:-1,msg:"密码重置失败或者重复提交"});
    }
  })
})