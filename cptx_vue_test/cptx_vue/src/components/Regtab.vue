<template>
  <div class="tab">
    <Tabs value="login" :animated="false">
        
        <TabPane label="立即登录" name="login" class="login">
           <div class="inputs">
                <input  type="text" placeholder="请输入手机号" v-model="uphone" @blur="test_uphone()" autofocus/><br>
                <input type="password" placeholder="请输入密码" v-model="upwd" @blur="test_upwd()"/> 
                <div style="margin-left:4.65rem;">
                  <div id="cbox" style="width:320px;"></div>
                </div>
                <!-- 登录------------- -->
                <button id="btnlogin" @click="btnlogin" :disabled=disabled>
                  <a style="color:white">登录</a>
                </button>
                <div class="belowinputs">
                    <input v-model="rem" type="checkbox" style="position:absolute;bottom:5.55rem;margin-left:-0.4rem;">  
                    <p style="display:inline-block; font-size:13px;margin-left:0.7rem;margin-top:0.5rem">记住手机和密码</p>
                    <router-link to="Reupwd"><a style="display:inline-block;margin-left:6.5rem">忘记密码?</a></router-link>
                </div>
                <img src="../assets/hr_or.png" alt="" style="margin-top:1rem"><br>
                <div style="margin-top:0.5rem">
                  <router-link to="./Qq"><img src="../assets/qq.png" alt="" style="margin-right:0.5rem"></router-link>
                  <img src="../assets/wx.png" alt="" style="margin-left:0.5rem">
                </div>
                
            </div>
        </TabPane>
        <TabPane label="手机注册" name="reg" class="reg">
          <div class="inputs">
                <input type="text" placeholder="请输入手机号" 
                      @blur="notsame()"  v-model="reguphone" id="reguphone">
                <span id="reguphone_msg" style="position:absolute;top:6.5rem"></span><br>
                <!-- 调试 *******-->
                
                <input type="text" id="code" v-model="acode" @blur="acodeverify()" class="code"  placeholder="图形验证码" style="width: 174px" />
                <div class="login-code" @click="refreshCode" style="display:inline-block">
                  <!--验证码组件-->
                <sidentify :identifyCode="identifyCode" style="position:absolute;top:10.3rem;right:5.7rem;"></sidentify>
                </div>
                <br>
               
                <!-- 调试 ********-->
                <input type="text" placeholder="短信验证码" style=" width: 174px "
                       v-model="veri"  @blur="notsame_veri()" id="inputveri">
                <button style="outline:none"  @click="countdown()" id="btn01">免费获取验证码</button><br>
                <input type="text" placeholder="请输入密码"  v-model="regupwd" >
                <div  class="belowinputs">
                    <input id="ch1" @blur="ch1()" type="checkbox" style="position:absolute;bottom:4.5rem;left:4.8rem">  
                    <!-- 选择同意协议 ----------- -->
                    <p style="display:inline-block;margin-left:-0.8rem; font-size:13px">我已阅读并且同意<a href="#">菜谱天下用户使用协议</a></p>
                </div>
            </div>
            <!-- 注册------------- -->
          <button id="btnreg" @click="btnreg" style="margin-top:1.6rem" :disabled="disabled">注册</button> 
      </TabPane>
    </Tabs>
  </div>
    
</template>
<script>
import SIdentify  from './SIdentify'
    export default {
        data(){
            return{
              uphone:"",
              upwd:"",
              reguphone:"",
              veri:"",
              regupwd:"",
              //提交按钮是否可点击 false是可点击,true不可点击
              disabled:true,
              code:"",
              rem:"",
              identifyCodes: "1234567890",
              identifyCode: "",
              acode:"",//text框输入的验证码
            };
        },
         components:{
        "sidentify":SIdentify,
        },
        mounted(){
          this.identifyCode = "";
          this.makeCode(this.identifyCodes, 4);
        },
        methods:{
          //验证码
          randomNum(min, max) {
            return Math.floor(Math.random() * (max - min) + min);
          },
      
          refreshCode() {
            this.identifyCode = "";
            this.makeCode(this.identifyCodes, 4);
          },
          makeCode(o, l) {
            for (let i = 0; i < l; i++) {
              this.identifyCode += this.identifyCodes[
              this.randomNum(0, this.identifyCodes.length)
              ];
            }
            console.log(this.identifyCode);
          },
          // //鼠标离开图形验证码不对就清空input
          acodeverify(){
            if(this.identifyCodes!==this.acode){
              this.acode="";
              this.refreshCode();
              this.$Message.warning("请输入正确的图形验证码");
            }
          },
          //注册部分**************************************************************************
          //鼠标离开验证手机号格式是否正确
            notsame(){
               //获取手机号
               var reguphone=document.getElementById("reguphone");
               if(!reguphone.value){
                 this.$Message.info("快来注册吧~ 我们期待您的加入哦！");
               }else{
                 var reguphone=this.reguphone;
                 var reg=/^1\d{10}$/;
                 if(!reg.test(reguphone)){
                   this.$Message.warning("请输入正确的手机号");
                 }else{
                   //发送ajax请求 axios
                  var url="user/checkphone";
                  var obj={reguphone:reguphone};
                  this.axios.get(url,
                  {params:obj}).then(result=>{
                    if(result.data.code>0){
                      this.$Message.success(result.data.msg);
                    }else{
                      this.$Message.warning(result.data.msg);
                    }
                  });
                } 
              }
            },
            //鼠标离开验证码输入框验证输入四位数是否与发送的code一致
            notsame_veri(){
              var veri=this.veri;
              if(veri==this.code){
                this.$Message.info("密码为6到12位的数字字母");
                //this.$Message.success("验证码输入正确");
              }else{
                this.$Message.warning("验证码输入有误");
              }
              // console.log("输入的验证码："+veri);
              // console.log("全局的code："+this.code);
            },
            //发送验证码
            countdown(e){
              //console.log(code);
              //获取手机号
              var reguphone=this.reguphone;
              var reg=/^1\d{10}$/;
              if(this.acode==""){
                this.$Message.warning("图形验证码不能为空");
              }else{
                if(!reg.test(reguphone)){
                   this.$Message.warning("手机号格式不正确");
                 }else if(reg.test(reguphone)){
                    var url="user/checkphone";
                    var obj={reguphone:reguphone};
                    this.axios.get(url,
                    {params:obj}).then(result=>{
                    if(result.data.code<0){
                      this.$Message.warning(result.data.msg);
                    }else{
                    //生成四位数随机数code
                    var code="";
                    for(var i=0;i<4;i++){
	                  code+=Math.floor(Math.random()*10)
                    }
                    this.code=code;
                    //发送ajax请求 axios
                    var url="user/smsg";
                    var obj={reguphone:reguphone,code:code};
                    this.axios.get(url,
                    {params:obj}).then(result=>{
                      //var code1=JSON.parse(result.data).code;
                      //console.log(result);-----------------------------------------------发送短信回执
                  });
                  var btn01=document.getElementById("btn01");
                  btn01.disabled = true;  //当点击后倒计时时候不能点击此按钮
                  var time = 60;  //倒计时60秒
                  var timer = setInterval(function fun1() {
                      time--;
                      if(time>=0) {
                      btn01.innerHTML = time + "s后重新发送";
                      }else{
                      btn01.innerHTML = "重新发送验证码";
                      btn01.disabled = false;  //倒计时结束能够重新点击发送的按钮
                      clearTimeout(timer);  //清除定时器
                      time = 60;  //设置循环重新开始条件
                      }
                    },1000);  //设置定时器
                  }
                });
              }
              }
                 
            },
            ch1(){
              var reguphone=this.reguphone;
              var regupwd=this.regupwd;
              var veri=this.veri;
              var code=this.code;
              var btnreg=document.getElementById("btnreg");
              var ch1=document.getElementById("ch1");
              if(veri==code&&ch1.checked==true&&reguphone!==null&&regupwd!==null){
                btnreg.disabled=false;
              }
            },
//注册按钮
          btnreg(){
            var reguphone=this.reguphone;
            var regupwd=this.regupwd;
            var veri=this.veri;
            var code=this.code;
            var ch1=document.getElementById("ch1");
            var reg=/^[0-9a-zA-Z]{6,12}$/
              if(!reg.test(this.regupwd)){
                this.$Message.warning ("密码为6到12位的数字字母");
              }else{
                if(veri==code&&ch1.checked==true){
              //发送ajax请求
              var url="user/reg";
              var obj={reguphone:reguphone,regupwd:regupwd};
              this.axios.get(url,
              {params:obj}).then(result=>{
                //console.log(result);
              });
              this.$Message.success("注册成功,请登录");
              this.$router.push("/Reg");
            }else{
               this.$Message.warning("请选择同意本站用户协议");
            }
          }
        },
//登录部分**********************************************************************************
          //失去焦点验证手机号是否已经被注册
          test_uphone(){
            var uphone=this.uphone;
                 var reg=/^1\d{10}$/;
                 if(!reg.test(uphone)){
                   this.$Message.warning("请输入正确的手机号");
                 }else{
                   //发送ajax请求 axios
                  var url="user/checkphone1";
                  var obj={uphone:uphone};
                  this.axios.get(url,
                  {params:obj}).then(result=>{
                    if(result.data.code>0){
                      this.$Message.warning(result.data.msg);
                    }else{
                      this.$Message.success(result.data.msg);
                    }
                  });
                }
          },
          test_upwd(){
             var uphone=this.uphone;
            var upwd=this.upwd;
                 var reg=/^1\d{10}$/;
                 if(!reg.test(uphone)){
                   this.$Message.warning("请输入正确的手机号");
                 }else{
                   //发送ajax请求 axios
                  var url="user/checkupwd";
                  var obj={uphone:uphone,upwd:upwd};
                  this.axios.get(url,
                  {params:obj}).then(result=>{
                    //console.log(result.data,parseInt(upwd));
                    if(result.data==upwd){
                      this.$Message.success("密码输入正确");
                    }else{
                      this.$Message.error("密码输入有误，请重新输入");
                    }
                  });
                }
          },

//登录按钮点击事件
          btnlogin(){
            var btnlogin=document.getElementById("btnlogin");
            var uphone=this.uphone;
            var upwd=this.upwd;
            // console.log(uphone,upwd);
            // console.log(upwd==null,uphone==null)
            if(uphone==null||upwd==null){
              this.$Message.error("用户名或密码不能为空");
            }else{
              var reg1=/^1\d{10}$/;
              var reg2=/^[a-zA-Z0-9_]{6,15}$/;
              //发送ajax请求 axios
              var url="user/login";
              var obj={uphone:uphone,upwd:upwd};
              this.axios.get(url,
              {params:obj}).then(result=>{
                if(result.data.code<0){
                  this.$Message.warning(result.data.msg);
                }else{
                  this.$router.push("/Home")
                  this.$Message.success(result.data.msg);
                }
              });
              var rem=this.rem;
              //console.log(rem);
              if(rem){
                sessionStorage.setItem("uphone",uphone);
                sessionStorage.setItem("upwd",upwd);
              }
            }
          },
        },
         beforeMount() {
          this.uphone= sessionStorage.getItem("uphone");
          this.upwd= sessionStorage.getItem("upwd");
          
        },
        created(){
            this.refreshCode();
        window.onload = function (){
          
            // 初始化
            new YpRiddler({
                expired: 10,
                mode: 'dialog',
                winWidth: 400,
                lang: 'zh-cn', // 界面语言, 目前支持: 中文简体 zh-cn, 英语 en
                // langPack: LANG_OTHER, // 你可以通过该参数自定义语言包, 其优先级高于lang
                container: document.getElementById('cbox'),
                appId: 'e9f37e46ff7e4422858d396ddc46cc34',
                version: 'v1',
                onError: function (param) {
                    if (param.code == 429) {
                        alert('请求过于频繁，请稍后再试！')
                        return
                    }
                    // 异常回调
                    console.error('验证服务异常')
                },
                onSuccess: function (validInfo, close) {
                    // 成功回调
                    //alert(`验证通过!token=${validInfo.token}, authenticate=${validInfo.authenticate}`)
                    close();
                    var btnlogin=document.getElementById("btnlogin");
                    btnlogin.disabled=false;
                },
                onFail: function (code, msg, retry) {
                    // 失败回调
                    alert('出错啦：' + msg + ' code: ' + code)
                    // if(code!==2){
                    //   var btnlogin=document.getElementById("btnlogin");
                    //   btnlogin.disabled=false;
                    // }
                    retry();
                },
                beforeStart: function (next) {
                    console.log('验证马上开始');
                    next();
                },
                onExit: function () {
                    // 退出验证 （仅限dialog模式有效）
                    console.log('退出验证');
                },
            })
        }
    },

   
}
</script>
<style>
/*验证码样式*/
.code{
  margin-left: -9.2rem
}
.login-code{
     cursor: pointer;
}
#btnlogin[disabled],#btnreg[disabled]{
  background-color:#E08376 !important;
  border:0 !important;
}
#btnlogin:hover,#btnreg:hover{
  background: #DB432E;
}
.belowinputs{
  text-align: left;
  margin-left: 6.7rem
}

.ivu-tabs{
    color:#000 !important;
}
.inputs{
    margin-top:1.8rem;
}
 .ivu-tabs-nav .ivu-tabs-tab {
    padding-top: 1.5rem !important;
    padding-bottom: 0.6rem !important;
    padding-left: 2.5rem !important;
    padding-right: 2.5rem !important;
    margin-right:0;
 }
  .ivu-tabs-nav-wrap {
    overflow: hidden;
    margin-bottom: -15px  !important;
}
  .tab{
    width: 470px;
    height: 470px;
    background-color: rgba(219, 219, 235, 0.7);/* *********************背景颜色*********************** */
    text-align: center;
    position: absolute;
    z-index: 0;
    top:44%;
    left: 50%;
    margin-left: -235px;
    margin-top: -210px;
    list-style: none;
  }
.ivu-tabs-nav-wrap {
    text-align: center;
    text-size:15px !important;
}

.ivu-tabs-nav-scroll {
    display: inline-block ;
}
  .ivu-tabs-nav-container {
    font-size: 21px !important;
    line-height:2 !important;
  }
  .inputs>input{
    width:320px;
    padding: 11px;  
    border-radius: 7px;;
    margin-bottom:1rem;
    outline:none;   
}
.inputs>button{
    width:136px;
    height:45px;
    border-radius: 1rem;
    margin-left: 0.6rem;
    display: inline-block;
    font-weight: 400;
    text-align: center;
    white-space: nowrap;
    vertical-align: middle;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
    border: 1px solid transparent;
    padding: 0.375rem 0.75rem;
    font-size: 1rem;
    line-height: 1.5;
    border-radius: 7px;
}
.inputs>button.active{
    border: 0;
}
  button{
    outline:none;
}
input{
    border: none;
}
.reg>button{
    display: inline-block;
    vertical-align: top;
    display:inline;
    zoom: 1;
    height: 42px;
    width:270px;
    border: 1px solid #db432e;
    border-radius: 4px;
    line-height: 40px;
    font-size: 15px;
    color: #fff;
    padding: 0px 24px;
    font-family: "Hiragino Sans GB","冬青黑体","Microsoft Yahei","微软雅黑";
    background: #ec5541;
    cursor: pointer;
    margin-top: 2rem;
  }
  .login>div>button{
    width:270px;
    margin-left:0;
    margin-top: 2rem;
    color:white;
    background-color: #ec5541;
  }
</style>
