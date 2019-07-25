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
<el-menu-item style="color:white;font-size:26px;margin-left:2.5rem ;margin-right:5.5rem">菜谱天下</el-menu-item> 
<el-menu-item style="color:white;font-size:18px;" index="1" ><a href="#" target="_blank" style="text-decoration:none;">首页</a></el-menu-item>
<el-menu-item style="color:white;font-size:18px;" index="2" ><a href="#" target="_blank" style="text-decoration:none">菜谱</a></el-menu-item>
<el-menu-item style="color:white;font-size:18px;" index="3" ><a href="#" target="_blank" style="text-decoration:none">食材</a></el-menu-item>
<el-menu-item style="color:white;font-size:18px;" index="4" ><a href="#" target="_blank" style="text-decoration:none">搜索</a></el-menu-item>
<Input search  icon="ios-search" placeholder="搜索菜谱" @on-click="search()"
        style="width:15rem ;position:absolute;left:38rem;top:0.8rem;border-radius:4rem;" />


<el-menu-item index="5" style="float:right">
      <template slot="title"><img slot="icon" src="../assets/shouji.png"><a href="#" target="_blank" style="text-decoration:none;font-size:12px;margin-left:5px">客户端</a></template>
    </el-menu-item>
   <el-menu-item index="6" style="float:right">
      <template slot="title"><img slot="icon" src="../assets/qiandao.png"><a href="#" target="_blank" style="text-decoration:none;font-size:12px;margin-left:5px">签到有礼</a></template>
    </el-menu-item>

  <el-submenu index="7" style="float:right">
      <template slot="title"><img slot="icon" src="../assets/jaihao.png"><span style="font-size:12px;margin-left:5px" >发布</span></template>
      <el-menu-item index="3-1">发话题</el-menu-item>
      <el-menu-item index="3-2">发菜谱</el-menu-item>
      <el-menu-item index="3-3">发日志</el-menu-item>    
    </el-submenu>

    <el-menu-item index="8" style="float:right">
      <template slot="title"><img slot="icon" src="../assets/denglu.png"><router-link to="Reg"><a href="#" target="_blank" style="text-decoration:none;font-size:8px;margin-left:5px">登录/注册</a></router-link></template>
    </el-menu-item>
</el-menu>

     </div>      
</div> 
       

</template>
<script>
//导出默认对象
    export default {
        data(){//当前组件共享的数据
            return {
                activeIndex:'1'
            }//数据
        },
        methods:{
            search(){
                console.log("search");
            },
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
</style>
