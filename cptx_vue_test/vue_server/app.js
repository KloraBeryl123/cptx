//1:引入第三方模块
const express = require("express");
const cors = require("cors");
const bodyParser = require('body-parser');
const session = require("express-session");
const userRouter=require("./routers/user.js")
 //2.1:配置连接池
const pool=require('./pool.js');
//2:配置第三方模块
 
 //2.2:跨域
 var server = express();
 server.use(cors({
   origin:["http://127.0.0.1:8080",
   "http://localhost:8080"],
   credentials:true
 }))
 //2.3:session 不加会运行不起来
 server.use(session({
   secret:"128位字符串",/* 加密的字符串 */
   resave:true,/* 最重要，一定要true。每次请求保存session数据 */
   saveUninitialized:true/* 保存初始化数据 */
 }))
 //2.9:指定静态目录
server.use(express.static("public"))
server.use('/user',userRouter);
 server.listen(3000);

//post传参
server.use(bodyParser.urlencoded({
  extended: false
}));
//丹丹-文件上传******************************
//发布菜谱功能
server.post("/menu",(req,res)=>{
  var obj=req.body;
  if(!obj.food_name){
      res.send({code:-1,msg:"菜谱名不能为空"});
      return;
  }
  if(!obj.ingredient){
      res.send({code:-1,msg:"用料不能为空"});
      return;
  }
  if(!obj.steps){
      res.send({code:-1,msg:"步骤不能为空"});
      return;
  }
  var sql="INSERT INTO person SET ?";
  pool.query(sql,[obj],(err,result)=>{
      if(err)throw err;
      if(result.affectedRows>0){
          res.send({code:1,msg:result});
      }
  })
})
server.post("/menuImg",(req,res)=>{
res.send("1");
})

//修改账户信息
server.post("/personal",(req,res)=>{
  var obj=req.body;
  var sql="UPDATE cptx_user SET uname=?,email=?,gender=?,home=?,sign=? WHERE phone=?";
  pool.query(sql,[obj.uname,obj.email,obj.gender,obj.home,obj.sign,obj.phone],(err,result)=>{
    if(err)throw err;
     if(result.affectedRows>0){
       res.send({code:1,msg:result});
    }
  })
})
//查询数据库中内容
server.get("/all",(req,res)=>{
var sql="SELECT * FROM person";
pool.query(sql,(err,result)=>{
  if(err)throw err;
  if(result.length>0)
    res.send({code:1,data:result});
  else{
    res.send({code:-1,data:"您还没有发布菜谱哦，快去发布吧！"});
  }
})
})

//收藏菜谱在页面显示
server.get("/coll",(req,res)=>{
  var obj=req.query;
  var sql="SELECT * FROM collect";
  pool.query(sql,[obj],(err,result)=>{
    if(err)throw err;
    if(result.length>0)
    res.send({code:1,data:result});
    else{
      res.send({code:-1,data:"您还没有收藏任何菜谱!"});
    }
  })
})


//添加收藏
server.post("/mycol",(req,res)=>{
  var obj=req.body;
  var sql="INSERT INTO collect SET ?";
  pool.query(sql,[obj],(err,result)=>{
    if(err)throw err;
    if(result.affectedRows>0){
      res.send({code:1,msg:result})
    }
  })
})
//取消收藏
server.get("/delcol",(req,res)=>{
  var obj=req.query;
  console.log(obj);
  var sql="DELETE FROM collect WHERE cid=?";
  pool.query(sql,[obj.cid],(err,result)=>{
    if(err)throw err;
    if(result.affectedRows>0){
      res.send({code:1,msg:result});
    }
  })
})


//删除菜谱
server.get("/delete",(req,res)=>{
var pid=req.query.pid;
var sql="DELETE FROM person WHERE pid=?";
pool.query(sql,[pid],(err,result)=>{
  if(err)throw err;
  if(result.affectedRows>0){
    res.send({code:1,msg:"删除成功"});
  }else{
    res.send({code:1,msg:"删除失败"})
  }
})
})

//园园
server.get("/cai",( req,res)=>{
  var sql="select id,title,arthor,img_url from content1";
  pool.query(sql,(err,result)=>{
    if(err)throw err;
    res.send(result);
  });
})
server.get("/tang",( req,res)=>{
  var sql="select id,title,arthor,img_url from content2";
  pool.query(sql,(err,result)=>{
    if(err)throw err;
    res.send(result);
  });
})
server.get("/rou",( req,res)=>{
  var sql="select id,title,arthor,img_url from content3";
  pool.query(sql,(err,result)=>{
    if(err)throw err;
    res.send(result);
  });
})
server.get("/tupian",( req,res)=>{
  var sql="select id,title,img_url from content4";
  pool.query(sql,(err,result)=>{
    if(err)throw err;
    res.send(result);
  });
})



server.get("/you",(req,res)=>{
  //1:参数 pno pageSize 页码 页大小
  var pno = req.query.pno;
  var ps = req.query.pageSize;
  //2:默认值 
  if(!pno){pno=1} //!pno 如果没有就是默认为1
  if(!ps){ps=32}
 //分页查询，先传入两个参数，pno,pagesize;
  //2:创建两条sql语句执行 放在一起执行
  var obj = {code:1,msg:"查询成功"};//先创建一个obj对象。
  var sql = " SELECT *";
  sql+=" FROM content8";
  sql+=" LIMIT ?,?";
  var offset = (pno-1)*ps;
  ps = parseInt(ps);//ps参数必须为整型
  //3:
  pool.query(sql,[offset,ps],(err,result)=>{//result 查询的结果
    if(err)throw err;
    //console.log(result);
    obj.data = result;//把result这个数组放在obj中result为一页的数据，为四个。
    var sql="SELECT count(*) as c from content8";    //
    pool.query(sql,(err,result)=>{
     if(err) throw err;//result是查询的总行数
     var pc=Math.ceil(result[0].c/ps);//result:{c:43}
     obj.pc=pc;//pc总页数，也放到obj中
     res.send(obj);                                      
    })
  })
 });



//晓燕

// 功能：查询
server.get("/second",(req,res)=>{
  var sql="select img,title,detail,bz from second";
  pool.query(sql,(err,result)=>{
      if(err)throw err;
      res.send(result)
  })
});
// 功能：查询
server.get("/three",(req,res)=>{
  var sql="select img1,img2,img3,img4,img5,num1,num2,num3,title,sdate,uname from three";
  pool.query(sql,(err,result)=>{
      if(err)throw err;
      res.send(result)
  })
});

server.get("/four",(req,res)=>{
  var sql="select title1,title2,title3,subtitle1,subtitle2,subtitle3,detail1,detail2,detail3 from lunbo";
  pool.query(sql,(err,result)=>{
      if(err)throw err;
      res.send(result)
  })
});


server.get("/five",(req,res)=>{
  //1:参数 pno pageSize
  var pno = req.query.pno;
  var ps = req.query.pageSize;
  //2:默认值 
  if(!pno){pno=1}
  if(!ps){ps=6}
  //2:sql
  var obj = {code:1,msg:"查询成功"};
  var sql = " SELECT title,subtitle,detail,img";
  sql+=" FROM cp";
  sql+=" LIMIT ?,?";
  var offset = (pno-1)*ps;
  ps = parseInt(ps);
  //3:json
  pool.query(sql,[offset,ps],(err,result)=>{
    if(err)throw err;
    obj.data=result;
    //console.log(result);
    var sql="select count(*) as c from cp";
    pool.query(sql,(err,result)=>{
      if(err){throw err;}
      var pc=Math.ceil(result[0].c/ps);
      obj.pc=pc;
      res.send(obj.data);
    })
  });
 });




