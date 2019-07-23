<template>
<div>
    <div class="min">
        <div class="min1">
            <a style="color:red" href="#">最新推荐</a>
            <a href="#">最新发布</a>
            <a href="#">热菜</a>
            <a href="#">凉菜</a>
            <a href="#">汤羹</a>
            <a href="#">主食</a>
            <a href="#">小吃</a>
            <a href="#">西餐</a>
            <a href="#">自制食材</a>
        </div>
        <div class="min2">
        <a href="#" style="font-size:16px !important;color:#666;float:right;">全部分类</a>
    </div>
    <div class="min3"></div>
    </div>
    <div class="tab1-div">
    <ul>
      <li v-for="(item,i) of list" :key="i">
        <div class="two-light">
            <img  :src="'http://127.0.0.1:3000'+item.img_url" style="display:block;width:230px;height:230px;border-radius:2px;">
        </div>
        <span style="font-size:17px">{{item.title}}</span>
      <br/>
      <span><img :class="shows==true?'red':''" @click="handleClick" style="color:red" src="../../../public/img/shoucan.png" alt=""></span>  
      </li>
    </ul>   
    </div>
    
    <a href="#" style="position:relative" @click="loadMore" class="al"><span style="position:absolute;top:7px">加载数据</span></a>   
    
</div>
</template>
<script>

export default {
  data(){
   return{ 
     list:[],     
     pno:0,
     ps:32 ,
    shows:false
     
    }
  },
  methods: {      
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
      handleClick(e){
          console.log(e.target);
          this.shows==true;
      }

    },    
  created(){
         this.loadMore();               
        },

  }
</script>

<style scoped>
.min{width:60%;margin:0 auto;margin-top:10px;border-bottom:1px solid #ddd}
.min3{content:"";display:block;clear:both;}
.min1  a{font-size:20px;line-height:24px;text-decoration:none;color:#666;float:left;margin-right:15px};
.two-light{width:230px;height:230px;}
.two-light img:hover{transform:scale3d(1.1, 1.1, 1);transition:all .8s}
.al{
    display: inline-block;
    border-radius: 5px;
    text-align: center;
    font-size: 20px !important;
    background-color: #f8f8f8;
    cursor: pointer;
    color: #ff6767;
    margin-top:10px;    
    width:60%;height:44px;
    margin-left:330px;
    }
.tab1-div{width:60%;margin:0 auto;margin-top:10px;justify-content:space-around}
.tab1-div>ul{list-style:none;padding:0}
.tab1-div ul li{text-align:center;}
.tab1-div ul li span{color:#999;font-size:12px}
.tab1-div ul li{margin-left:8px;margin-right:7px}
.tab1-div ul li{float:left}  

.two-light img:hover{transform:scale3d(1.1, 1.1, 1);transition:all .8s}
</style>