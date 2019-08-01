<template>
    <div>
        <div class="myclass" >
<el-menu
  
  class="el-menu-demo"
  mode="horizontal"
  background-color="transparent"
  text-color="#fff"

  active-text-color="#ffd04b">
<el-menu-item style="color:white;font-size:25px;margin-left:3rem ;margin-right:5.5rem">菜谱天下</el-menu-item> 
<el-menu-item index="1" ><router-link to="/index"><a  style="text-decoration:none;">首页</a></router-link></el-menu-item>
<el-menu-item index="2" ><router-link to="./index2"><a target="_blank" style="text-decoration:none">菜谱</a></router-link></el-menu-item>
<el-menu-item index="3" ><a href="javascript:;" style="text-decoration:none">食材</a></el-menu-item>
<el-menu-item index="4" ><a href="javascript:;" style="text-decoration:none">搜索</a></el-menu-item>


<el-menu-item index="5" style="float:right">
      <template slot="title"><img slot="icon" src="../assets/shouji.png"><a href="javascript:;" style="text-decoration:none;font-size:12px;margin-left:5px">客户端</a></template>
    </el-menu-item>
   <el-menu-item index="6" style="float:right">
      <template slot="title"><img slot="icon" src="../assets/qiandao.png"><a href="javascript:;" style="text-decoration:none;font-size:12px;margin-left:5px">签到有礼</a></template>
    </el-menu-item>

  <el-submenu index="7" style="float:right">
      <template slot="title"><img slot="icon" src="../assets/jaihao.png"><span style="font-size:12px;margin-left:5px" @click="put">发布</span></template>
      <el-menu-item index="3-1">发话题</el-menu-item>
      <el-menu-item index="3-2">发菜谱</el-menu-item>
      <el-menu-item index="3-3">发日志</el-menu-item>    
    </el-submenu>
  <el-submenu index="8" style="float:right">
      <template slot="title">
        <img src="../assets/denglu.png">
        <span style="font-size:12px;margin-left:5px"  @click="toreg1">{{dlzc}}</span>
      </template>
      <el-menu-item index="8-1" :disabled="disabled" @click="tcdl1">{{tcorno}}</el-menu-item>   
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
                dlzc:"登陆/注册",
                tcorno:"",
                disabled:true,
            }//数据
        },
        methods:{
          toreg1(){
              this.$router.push("/Reg");
            },
            tcdl1(){
               this.$router.push("/Reg");
            },
            put(){
             this.$router.push("/Home");
            },
        },
         beforeMount() {
          var uphone= sessionStorage.getItem("uphone");
          console.log(uphone)
          if(uphone!==null){
            this.dlzc=uphone;
            this.disabled=false;
            this.tcorno="退出登录"
          }
        },
        
        
    }
</script>
<style>

.myclass{
  background: transparent;
  width:100%
}
.el-menu.el-menu--horizontal {
     border-bottom: 0 !important;
}
</style>
