<template>
    <div>
       <!--  <img src="../assets/03.jpg" alt="" style="position:absolute;z-index:-3;width:100%;height:200px;">
        <div class="bggradient" style="position:absolute;z-index:-2;width:100%;height:200px;"></div> -->
        <div class="myclass" >
<el-menu
   
  class="el-menu-demo"
  mode="horizontal"
  background-color="transparent"
  text-color="#fff"
  active-text-color="#ffd04b">
<el-menu-item style="color:white;font-size:26px;margin-left:0rem ;margin-right:3rem">菜谱天下</el-menu-item> 
<el-menu-item style="color:white;font-size:18px;" index="1" ><router-link to="/index"><a href="#" target="_blank" style="text-decoration:none;">首页</a></router-link></el-menu-item>
<el-menu-item style="color:white;font-size:18px;" index="2" ><router-link to="/index2"><a href="javascript:;" style="text-decoration:none">菜谱</a></router-link></el-menu-item>
<el-menu-item style="color:white;font-size:18px;" index="3" ><a href="javascript:;" style="text-decoration:none">食材</a></el-menu-item>
<el-menu-item style="color:white;font-size:18px;" index="4" ><a href="javascript:;" style="text-decoration:none">搜索</a></el-menu-item>
<Input search  icon="ios-search" placeholder="搜索菜谱" @on-click="search()"
        style="width:13rem ;position:absolute;left:32rem;top:1rem;border-radius:4rem;" />


<el-menu-item index="5" style="float:right">
      <template slot="title"><img slot="icon" src="../assets/shouji.png"><a href="javascript:;" style="text-decoration:none;font-size:12px;margin-left:5px">客户端</a></template>
    </el-menu-item>
   <el-menu-item index="6" style="float:right">
      <template slot="title"><img slot="icon" src="../assets/qiandao.png"><a href="javascript:;" style="text-decoration:none;font-size:12px;margin-left:5px">签到有礼</a></template>
    </el-menu-item>

  <el-submenu index="7" style="float:right">
      <template slot="title"><img slot="icon" src="../assets/jaihao.png"><router-link to="/Home"><span style="font-size:12px;margin-left:5px" >发布</span></router-link></template>
      <el-menu-item index="7-1">发话题</el-menu-item>
      <el-menu-item index="7-2">发菜谱</el-menu-item>
      <el-menu-item index="7-3">发日志</el-menu-item>    
    </el-submenu>
  <el-submenu index="8" style="float:right" router >
      <template slot="title" >
        <img src="../assets/denglu.png">
        <span style="font-size:12px;margin-left:5px" @click="toreg2">{{dlzc2}}</span>
      </template>
      <el-menu-item index="8-1" :disabled="disabled" @click="tcdl2">
        {{tcorno2}}
      </el-menu-item>
  </el-submenu>
</el-menu>

</div>      
</div> 
       

</template>
<script>
//导出默认对象
    export default {
        data(){//当前组件共享的数据
            return {
                activeIndex:'1',
                dlzc2:"登陆/注册",
                tcorno2:"",
                disabled:true,
            }//数据
        },
        methods:{
          toreg2(){
              this.$router.push("/Reg");
            },
            tcdl2(){
               this.$router.push("/Reg");
            }
        },
       beforeMount() {
          var uphone= sessionStorage.getItem("uphone");
          //console.log(uphone)
          if(uphone!==null){
            this.dlzc2=uphone;
            this.disabled=false;
            this.tcorno2="退出登录"
          }
        },

        
        
    }
</script>
<style scoped>
.myclass{
  background-image: url("../assets/03.jpg");
  opacity: 0.8;
  width:100%
}
.el-menu.el-menu--horizontal {
     border-bottom: 0 !important;
}
.ivu-input-search {
    background:  #ec5541 !important;
    color: #fff!important;
    border-color: #ec5541 !important;
    transition: all .2s ease-in-out;
    position: relative;
    z-index: 2;
}
.ivu-input-search:hover{
    background: #DB432E !important;
}
.ivu-input-icon-normal+.ivu-input {
    border-radius: 2rem;
}
.bggradient{
     background-color:linear-gradient(to bottom, rgba(255, 255, 255, 0) , rgba(0, 255, 255,1)); 
}
.dis-no{
  
}
</style>
