<template>
    <div>
    <div class="Content">
    <el-menu  class="content" mode="horizontal" >
     <el-menu-item index="3" class="qu" style="float:left;border-bottom: 3px solid #ff6767;"><a href="#" target="_blank" style="text-decoration:none;font-size:27px;color:#ff6767;">时令食材</a></el-menu-item>  
    <el-menu-item index="3" style="float:right"><a href="#" target="_blank" >肉禽蛋</a></el-menu-item>
    <el-menu-item index="3" style="float:right"><a href="#" target="_blank" >水产品</a></el-menu-item>
    <el-menu-item index="3" style="float:right"><a href="#" target="_blank" >蔬菜</a></el-menu-item>
    <el-menu-item index="3" style="float:right"><a href="#" target="_blank" >米面豆乳</a></el-menu-item>
    <el-menu-item index="3" style="float:right"><a href="#" target="_blank" >食材首页</a></el-menu-item>
    </el-menu>
    <div class="line"></div>
    <div class="content2">
    <ul>
    <li >
   <a title="西红柿" href="#" target="_blank"><img class="imgLoad1" src="../../assets/shicai/xihongshi.jpg" style="display: block;">西红柿</a>
   <br>
   <span>美白防晒首选</span>  
    </li>
<li>
   <a title="黄瓜" href="#" target="_blank"><img class="imgLoad1" src="../../assets/shicai/huanggua.jpg" style="display: block;">黄瓜</a>
   <br>
   <span>厨房里的美容师</span>  
    </li>
    <li>
   <a title="苦瓜" href="#" target="_blank"><img class="imgLoad1" src="../../assets/shicai/kugua.jpg" style="display: block;">苦瓜</a>
   <br>
   <span>苦尽甘来</span> 
    </li>
    <li>
   <a title="西瓜" href="#" target="_blank"><img class="imgLoad1" src="../../assets/shicai/xigua.jpg" style="display: block;">西瓜</a>
   <br>
   <span>群众宠儿</span>  
    </li>
    <li>
   <a title="茄子" href="#" target="_blank"><img class="imgLoad1" src="../../assets/shicai/qiezi.png" style="display: block;">茄子</a>
   <br>
   <span>微笑的代名词</span> 
    </li>
    <li>
   <a title="西兰花" href="#" target="_blank"><img class="imgLoad1" src="../../assets/shicai/xilanhua.jpg" style="display: block;">西兰花</a>
   <br>
   <span>蔬菜皇冠</span> 
    </li>
    <li>
   <a title="毛豆" href="#" target="_blank"><img class="imgLoad1" src="../../assets/shicai/maodou.jpg" style="display: block;">毛豆</a>
   <br>
   <span>夏日圣豆士</span>
    </li>
     <li>
   <a title="小龙虾" href="#" target="_blank"><img class="imgLoad1" src="../../assets/shicai/xiaolongxia.jpg" style="display: block;">小龙虾</a>
   <br>
   <span>万年网红</span>
    </li>
     <li>
   <a title="猪里脊" href="#" target="_blank"><img class="imgLoad1" src="../../assets/shicai/zhuliji.jpg" style="display: block;">猪里脊</a>
   <br>
   <span>超嫩小鲜肉</span>
    </li>
     <li>
   <a title="皮皮虾" href="#" target="_blank"><img class="imgLoad1" src="../../assets/shicai/pipixia.jpg" style="display: block;">皮皮虾</a>
   <br>
   <span>天生美味难自弃</span>
    </li>
     <li>
   <a title="生蚝" href="#" target="_blank"><img class="imgLoad1" src="../../assets/shicai/shenghao.jpg" style="display: block;">生蚝</a>
   <br>
  <span>海中牛奶</span>
    </li>
     <li>
   <a title="鲈鱼" href="#" target="_blank"><img class="imgLoad1" src="../../assets/shicai/luyu.jpg" style="display: block;">鲈鱼</a>
   <br>
   <span>但爱鲈鱼美</span>
    </li>
     <li>
   <a title="鸡翅" href="#" target="_blank"><img class="imgLoad1" src="../../assets/shicai/jichi.jpg" style="display: block;">鸡翅</a>
   <br>
   <span>老少通吃</span>
    </li>
     <li>
   <a title="排骨" href="#" target="_blank"><img class="imgLoad1" src="../../assets/shicai/paigu.jpg" style="display: block;">排骨</a>
   <br>
   <span>可记得吮指之乐</span>
    </li>
    </ul>

    </div>
      </div> 
    </div>
</template>
<script>
//导出默认对象
    export default {
        data(){//当前组件共享的数据
            return {
                
            }//数据
        },
      
        
        
    }
</script>
<style scoped>
.Content{width:990px;margin:0 auto;}
.content  a{font-size:16px;line-height:78px;text-decoration:none;}
.content2>ul{list-style:none;padding:0}
.content2 ul li{text-align:center;}
.content2 ul li span{color:#999;font-size:12px}
.imgLoad1{width:126px;height:126px}
.content2 ul li+li{margin-left:8px;margin-right:7px}
.content2 ul li{float:left}
</style>

