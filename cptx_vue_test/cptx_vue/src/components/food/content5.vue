<template>
<div class="content1">
    <el-tabs v-model="activeName"  @tab-click="handleClick">
    <el-tab-pane label="最新推荐" name="first">
    <div class="content1-22">
    <ul>
      <li v-for="(item,i) of list" :key="i">
      <a :title="item.title" href="#" target="_blank"><img class="imgLoad1-1" :src="'http://127.0.0.1:3000'+item.img_url" style="display: block;">{{item.title}}</a>
      <br/>
      <span>{{item.arthor}}</span>  
      </li>
    </ul>
    <a href="#" style="position:relative" @click="loadMore" class="al"><span style="position:absolute;top:7px">加载数据</span></a>   
    </div>    
    </el-tab-pane>

    <el-tab-pane label="最新发布" name="second">
    <div class="content1-33">
    <ul>
      <li v-for="(item,i) of list1" :key="i">
      <a :title="item.title" href="#" target="_blank"><img class="imgLoad1-1" :src="'http://127.0.0.1:3000'+item.img_url" style="display: block;">{{item.title}}</a>
      <br/>
      <span>{{item.arthor}}</span>  
      </li>
    </ul>
    <a href="#" style="position:relative" @click="loadMore1" class="al"><span style="position:absolute;top:7px">加载数据</span></a>   
    </div>    
    </el-tab-pane>

     <el-tab-pane label="热菜" name="third">
    <div class="content1-44">
    <ul>
      <li v-for="(item,i) of list2" :key="i">
      <a :title="item.title" href="#" target="_blank"><img class="imgLoad1-1" :src="'http://127.0.0.1:3000'+item.img_url" style="display: block;">{{item.title}}</a>
      <br/>
      <span>{{item.arthor}}</span>  
      </li>
    </ul>
    <a  href="#" style="position:relative" @click="loadMore2" class="al"><span style="position:absolute;top:7px">加载数据</span></a>   
    </div>    
    </el-tab-pane>
    
  </el-tabs>  
</div>
</template>
<script>

export default {
  data(){
   return{ 
     list:[],
     list1:[],
     list2:[],
     activeName:"first",
     pno:0,
     ps:8 ,
     
    }
  },
  methods: { 
      handleClick(tab, event){
          var url="food1";
               
          this.axios.get(url).then(result=>{
            
            this.list1=result.data.data;
         
            
          }); 
          var url="food2";
this.axios.get(url).then(result=>{
            this.list2=result.data.data;        
          }); 
      },
      loadMore(){
          var url="food";         
          this.pno++;
               // console.log(this.pno++);
                //创建参数对象
                var obj={pno:this.pno,pageSize:this.ps};
                this.axios.get(url,{params:obj}).then(result=>{
                    console.log(result.data);       
                    //数据覆盖
                   // console.log(result.data.data);// 1 data为接收的数据
                    //this.list=result.data.data;
                    //数据追加
                   // var rows=this.list.concat(result.data.data);
                     var rows=this.list.concat(result.data.data);
                     console.log(123);
                     console.log(rows);
                     this.list=rows;                  
                })

      },

      loadMore1(){
          var url="food1";         
          this.pno++;
               // console.log(this.pno++);
                //创建参数对象
                var obj={pno:this.pno,pageSize:this.ps};
                this.axios.get(url,{params:obj}).then(result=>{
                    console.log(result.data);       
                    //数据覆盖
                   // console.log(result.data.data);// 1 data为接收的数据
                    //this.list=result.data.data;
                    //数据追加
                   // var rows=this.list.concat(result.data.data);
                     var rows=this.list1.concat(result.data.data);
                     console.log(123);
                     console.log(rows);
                     this.list1=rows;                  
                })

      },
      loadMore2(){
          var url="food2";         
          this.pno++;
          // console.log(this.pno++);
          //创建参数对象
          var obj={pno:this.pno,pageSize:this.ps};
          this.axios.get(url,{params:obj}).then(result=>{
          console.log(result.data);       
          //数据覆盖
          // console.log(result.data.data);// 1 data为接收的数据
          //this.list=result.data.data;
          //数据追加
          // var rows=this.list.concat(result.data.data);
            var rows=this.list2.concat(result.data.data);
            console.log(123);
            console.log(rows);
            this.list2=rows;                  
       })

      },
  },
  created(){
         this.loadMore();
         this.handleClick();
         
        },

  }

</script>

<style scoped>
.content1{width:990px;margin:0 auto;}
.content1  a{font-size:16px;line-height:24px;text-decoration:none;}
.imgLoad1-1{width:230px;height:230px}

.content1-22>ul{list-style:none;padding:0}
.content1-22 ul li{text-align:center;}
.content1-22 ul li span{color:#999;font-size:12px}

.content1-22 ul li+li{margin-left:8px;margin-right:7px}
.content1-22 ul li{float:left}

.content1-33>ul{list-style:none;padding:0}
.content1-33 ul li{text-align:center;}
.content1-33 ul li span{color:#999;font-size:12px}

.content1-33 ul li+li{margin-left:8px;margin-right:7px}
.content1-33 ul li{float:left}

.content1-44>ul{list-style:none;padding:0}
.content1-44 ul li{text-align:center;}
.content1-44 ul li span{color:#999;font-size:12px}

.content1-44 ul li+li{margin-left:8px;margin-right:7px}
.content1-44 ul li{float:left}
.al{display: inline-block;
    border-radius: 5px;
    text-align: center;
    font-size: 20px !important;
    background-color: #f8f8f8;
    cursor: pointer;
    color: #ff6767;
    margin-top:10px;
    
    width:990px;height:44px
    }
  
</style>