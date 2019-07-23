<template>
    <div class="content1">
    <el-tabs v-model="activeName" @tab-click="handleClick">
    <el-tab-pane label="新秀菜谱" name="first">
    <div class="content22">
    <ul>
      <li v-for="(item,i) of list" :key="i">
      <a :title="item.title" href="#" target="_blank"><img class="imgLoad" :src="'http://127.0.0.1:3000'+item.img_url" style="display: block;">{{item.title}}</a>
      <br/>
      <span>{{item.arthor}}</span>  
      </li>
    </ul> 
    </div>    
    </el-tab-pane>

    <el-tab-pane label="一周热门" name="second">
    <div class="content33">
    <ul>
      <li v-for="(item,i) of list1" :key="i">
      <a :title="item.title" href="#" target="_blank"><img class="imgLoad" :src="'http://127.0.0.1:3000'+item.img_url" style="display: block;">{{item.title}}</a>
      <br/>
      <span>{{item.arthor}}</span>  
      </li>
    </ul> 
    </div>
    
    </el-tab-pane>
    <el-tab-pane label="最受欢迎的家常菜" name="third">
     <div class="content44">
    <ul>
      <li v-for="(item,i) of list2" :key="i">
      <a :title="item.title" href="#" target="_blank"><img class="imgLoad" :src="'http://127.0.0.1:3000'+item.img_url" style="display: block;">{{item.title}}</a>
      <br/>
      <span>{{item.arthor}}</span>  
      </li>
    </ul> 
    </div>
    
    </el-tab-pane>
  </el-tabs>  
</div>
</template>
<script>
  export default {
    data() {
      return {
        activeName: 'second',
        list:[],
        list1:[],
        list2:[]
      };
    },
    methods: {
      handleClick(tab, event) {
          //console.log(tab);
          var url="cai";
          
          this.axios.get(url).then(result=>{
            this.list=result.data;
            
          }); 
          var url="tang";
this.axios.get(url).then(result=>{
            this.list1=result.data;        
          }); 
          var url="rou";
this.axios.get(url).then(result=>{
            this.list2=result.data;        
          });                 
      
    }
     
    },
          
    created(){
            this.handleClick();
        }
  };
</script>
<style scoped>
.el-tabs__item{font-size:20px !important;}
.content1{width:990px;margin:0 auto;}
.content22>ul{list-style:none;padding:0}
.content22 ul li{text-align:center;}
.content22 ul li span{color:#999;font-size:12px}
.imgLoad{width:230px;height:230px}
.content22 ul li+li{margin-left:8px;margin-right:7px}
.content22 ul li{float:left}


.content33>ul{list-style:none;padding:0}
.content33 ul li{text-align:center;}
.content33 ul li span{color:#999;font-size:12px}
.imgLoad{width:230px;height:230px}
.content33 ul li+li{margin-left:8px;margin-right:7px}
.content33 ul li{float:left}

.content44>ul{list-style:none;padding:0}
.content44 ul li{text-align:center;}
.content44 ul li span{color:#999;font-size:12px}
.imgLoad{width:230px;height:230px}
.content44 ul li+li{margin-left:8px;margin-right:7px}
.content44 ul li{float:left}
</style>
