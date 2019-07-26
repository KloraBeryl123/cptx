<template>
<div>
    <div class="min">
        <!-- <div class="min1">
            <a style="color:red" href="#">最新推荐</a>
            <a href="#">最新发布</a>
            <a href="#">热菜</a>
            <a href="#">凉菜</a>
            <a href="#">汤羹</a>
            <a href="#">主食</a>
            <a href="#">小吃</a>
            <a href="#">西餐</a>
            <a href="#">自制食材</a>
        </div> -->
        <!-- <div class="min2">
        <a href="#" style="font-size:16px !important;color:#666;float:right;">全部分类</a>
    </div> -->
    <div class="min3"></div>
    </div>
    <div class="tab1-div">
    <ul class="tab1-ul">
      <li v-for="(item,i) of list" :key="i">
        <div class="two-light">
            <img  :src="'http://127.0.0.1:3000'+item.img_url" style="display:block;border-radius:2px;">
        </div>
        <span style="font-size:17px;margin-top:8px;display:inline-block">{{item.title}}</span>
      <br/>
      <span ><img  @click="handleClick($event,i)" style="color:red;margin: 3px 0 4px 0;" :src="xinxin" alt=""></span>  
      </li>  
    </ul>
    </div>
    
    <a href="javascript:;" style="position:relative" @click="loadMore" class="al">
      <span style="position:absolute;top:7px; ">
    加载数据</span></a>   
    
</div>
</template>
<script>

export default {
  data(){
   return{ 
     list:[],     
     pno:0,
     ps:32 ,
    shows:false,
    xinxin:require("../../assets/xin1.png"),
    
     title:'',
      arthor:'',
      material:'',
      img_url:'',
      id:''
     
    }
  },
  methods: {      
      loadMore(){
          var url="you";         
          this.pno++;
        // console.log(this.pno++);
        //创建参数对象
        var obj={pno:this.pno,pageSize:this.ps};
        this.axios.get(url,{params:obj}).then(result=>{ 
        this.title=result.data.data[0].title;
        this.arthor=result.data.data[0].arthor;
        this.material=result.data.data[0].material;
        console.log(result);
        this.img_url=result.data.data[0].img_url;
        //数据覆盖
        // console.log(result.data.data);// 1 data为接收的数据
        //this.list=result.data.data;
        //数据追加
        // var rows=this.list.concat(result.data.data);
            var rows=this.list.concat(result.data.data);
            this.list=rows;                  
            })
      },
      handleClick(e,i){
          e.target.src=require("../../assets/xin2.png");
           this.focused==true;
           console.log(this.focused);
           var id=this.list[i].id;
           this.id=id;
           console.log(this.id);
           sessionStorage.setItem("id",id);
          
        var url="mycol";
        let fileFormData = new URLSearchParams();
        fileFormData.append('cid', this.id);
        fileFormData.append('title', this.title);
        fileFormData.append('arthor', this.arthor);
        fileFormData.append('material', this.material);
        fileFormData.append('img_url', this.img_url);
        var requestConfig = {
          headers: {
            'Content-Type': 'application/x-www-form-urlencoded'
                    }
         }
        this.axios.post(url,fileFormData,requestConfig).then(result=>{
            // console.log(result);
        })
      }


      

    },    
  created(){
         this.loadMore();               
   },

  }
</script>

<style scoped>
.min{width:72%;margin:0 auto;margin-top:10px;border-bottom:1px solid #ddd}
.min3{content:"";display:block;clear:both;}
.min1  a{font-size:20px;line-height:24px;text-decoration:none;color:#666;float:left;margin-right:15px};
.tab1-ul{width:100%;margin:0 auto;}
.tab1-ul li{width:20%;}
.two-light{
  width:280px;
  height: 280px;
  overflow: hidden;
}
.two-light img{width:100%;}
.two-light img:hover{transform:scale3d(1.1, 1.1, 1);transition:all .8s}
.al{
    display: inline-block;
    border-radius: 5px;
    text-align: center;
    font-size: 20px !important;
    background-color: #db432e;
    cursor: pointer;
    color: #fff;
    margin-top:10px;    
    width:30%;height:44px;
    margin-left:573px;
    padding-right:5.5rem;
    }
.tab1-div{width:83%;margin:0 auto;margin-top:2rem;}
.tab1-div>ul{list-style:none;padding:0;margin-left: 4.7rem}
.tab1-div ul li{text-align:center}
.tab1-div ul li span{color:#999;font-size:12px;margin-left:4px}
.tab1-div ul li{margin-right:20px}
.tab1-div ul li{float:left}  

.two-light img:hover{transform:scale3d(1.1, 1.1, 1);transition:all .8s}
</style>