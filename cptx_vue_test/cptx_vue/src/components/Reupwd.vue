<template>
<div class="form-group">
    <img src="../assets/lmbg.jpg" style="position:absolute;z-index:-1;width:100%;height:78rem;opacity:0.9">
     <div class=""> 
        <div>
            <h1 style="color:white">找回密码</h1>
        </div>
        <div> 
            <!-- <span> 手 机 号 ：</span> -->
            <Input v-model="uphone" @on-blur="iphone()"  placeholder="请输入手机号" style="width: 300px" /><br>
        </div>
        <div>
            <!-- <span>  验 证 码 ：</span> -->
            <Input type="text" id="code" v-model="code" @on-blur="verify()" class="ccode"  placeholder="图形验证码" style="width: 178px" />
            <div class="login-code" @click="refreshCode" style="display:inline-block">
            <!--验证码组件-->
                <sidentify :identifyCode="identifyCode" style="position:absolute;bottom:7.6rem;"></sidentify>
            </div>
        </div>
        <div> 
            <!-- <span>  新 密 码 ：</span> -->
            <Input v-model="newpwd" @on-focus="newupwd()"  placeholder="请输入新密码" style="width: 300px"/><br>
        </div>
        <div>
            <!-- <span>确认密码 ：</span> -->
            <Input v-model="newpwd2" placeholder="请重复输入新密码" @on-blur="Altsub()" style="width: 295px"/><br>
        </div>
        <router-link to="../Home"><a><button type="primary" id="sub" :disabled="disabled">提交修改</button></a></router-link>
    </div>
    
</div>
</template>
<script >
import SIdentify  from './SIdentify'
export default {
    data(){
        return{
            uphone:"",
            identifyCodes: "1234567890",
            identifyCode: "",
            code:"",//text框输入的验证码
            newpwd:"",
            newpwd2:"",
            disabled:true,
        }
    },
    components:{
        "sidentify":SIdentify,
    },
    beforeMount() {
          this.uphone= sessionStorage.getItem("uphone")
         },
    mounted(){
        this.identifyCode="";
        this.makeCode(this.identifyCodes,4);
    },
    created(){
        this.refreshCode()
    },
    methods:{
        Altsub(){
            if(this.code!==null){
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
                        /******验证密码******/
                        var reg=/^[0-9a-zA-Z]{6,12}$/;
                        if(!reg.test(this.newpwd)){
                            this.$Message.warning("密码为6到12位的数字字母");
                        }else if(this.newpwd!==this.newpwd2){
                            this.$Message.warning("两次密码输入不一致");
                        }else{
                            //更新密码
                            var uphone=this.uphone;
                            var newpwd=this.newpwd
                            var obj={uphone:uphone,newpwd:newpwd};
                            this.axios.get("user/update",{params:obj}).then(result=>{
                                if(result.data.code>0){
                                    var sub=document.getElementById("sub");
                                    sub.disabled=false;
                                    this.$Message.success(result.data.msg);
                                    sessionStorage.setItem("uphone",uphone);
                                    sessionStorage.setItem("upwd",newpwd);
                                }else{
                                    this.$Message.warning(result.data.msg)
                                }
                                
                            }) 
                        }
                    }
                });
            };
            }else{
                this.$Message.warning("请输入验证码");
            }
        },
        newupwd(){
            this.$Message.info("密码为6到12位的数字字母");
        },
        iphone(){
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
                    this.$Message.error(result.data.msg);
                }else{
                    //this.$Message.success(result.data.msg);
                }
                });
            };
        },
        verify(){
            // console.log(this.identifyCode);
            // console.log();
            if(this.identifyCode==this.code){
                this.$Message.success("验证码输入正确");
            }else{
                this.code="";
                this.refreshCode();
                this.$Message.warning("验证码输入错误");
            }
        },
        //验证码
        randomNum(min, max) {
            return Math.floor(Math.random() * (max - min) + min);
        },
      
        refreshCode() {
            this.identifyCode = "";
            this.makeCode(this.identifyCodes, 4);
        },
        //产生四位随机数
        makeCode(o, l) {
            for (let i = 0; i < l; i++) {
                this.identifyCode += this.identifyCodes[
                this.randomNum(0, this.identifyCodes.length)
                ];
            }
            //console.log(this.identifyCode);
        },

    }
}
</script>
<style scoped>
#sub[disabled]{
  background-color:#E08376 !important;
  border:0 !important;
}

.form-group>div>div:first-child{
   text-align: center;
}
.ivu-input {
    border-radius: 10px !important;
}

/*验证码样式*/
.ccode{
    width:124px;
    height:31px;
}
.login-code{
     cursor: pointer;
}
.form-group{
    display: flex; 
    justify-content: center;
    align-items: center;
}
.form-group>div{
    position: relative;
    background-color:transparent;
    vertical-align: center;
    margin-top: 7%;
}
.form-group>div>div{
    margin-top: 2rem;
}
.form-group>div>div>span{
    font-size: 15px;
}
.form-group>div button{
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
    position: absolute;
    left: 50%;
    margin-left: -135px;
}
.form-group>div button:hover{
     background: #DB432E;
     border:0 !important;

}
</style>

