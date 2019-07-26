<template>
  <div class="zhu">
  <div id="demo" class="carousel" :timer="timer" :style="{width:innerWidth+'px'}" @mouseenter="stop" @mouseleave="start">
    <!--轮播图片-->
    <div class="carousel-inner" :class="ulClass" :style="ulStyle">
      <div class="carousel-item" v-for="(img,i) of imgs" :key="i" :style="{width:innerWidth+'px'}">
        <router-link to="#"><img :src="img.src" alt="" :style="{width:innerWidth+'px'}"></router-link>
        <router-link to="#"></router-link>
      </div>
      <div class="carousel-item" :style="{width:innerWidth+'px'}">
        <router-link to="#"><img :src="imgs[0].src" alt="" :style="{width:innerWidth+'px'}"></router-link>
        <router-link to="#"></router-link>
      </div>
    </div>
    <!--左右箭头-->
    <a href="#" class="carousel-control-next" @click="move(1)">
      <span class="carousel-control-next-icon"><img src="../../../public/img/icon-arrow-right.png" alt=""></span>
    </a>
    <a href="#" class="carousel-control-prev" @click="move(-1)">
      <span class="carousel-control-prev-icon"><img src="../../../public/img/zuoyoujiantou-2.png" alt=""></span>
    </a>
    <!--轮播指示器-->
    <ul class="carousel-indicators">
      <li v-for="(img,index) of imgs" :key="index" :class="index==i?'active':''" @click="moveTo(index)"></li>
    </ul>
    </div>
    <div class="daquan">
        <a href="#" v-for="(item,idx) of list" :key="idx" :class="sett[idx]" @mouseleave="getNum(idx)" @mouseenter="getNum(idx)">
        <ul><li v-text="item" :class="{active:idx==num}"></li></ul>
        </a>
    </div>
    <!-- <div>
          <div class="zuo_one" v-show="num==0" @mouseleave="getNum(idx)">
            <div class="zuo_one_s">
            <ul>
                <li>
                <router-link to="/Second" :class="set[i]" v-for="(item,i) of series[0]" :key="i">{{item.title}}</router-link>
                </li>
                <li><a href="#" :class="set[i]" v-for="(item,i) of series[0]" :key="i" v-text="item.subtitle"></a></li>
              </ul>
              
              <a href="" class="set"  v-for="(item,i) of series[0]" :key="i" v-text="item.title"></a>
              <a class="zuo_one_size" :class="set[i]" href=""  v-for="(item,i) of series[0]" :key="i" v-text="item.subtitle"></a>
            </div>   
          </div>           
          <div class="zuo_one" v-show="num==1" @mouseleave="getNum(idx)">
            <div class="zuo_one_s">
              <ul>
                <li><router-link to="/Second" :class="setta[i]" v-for="(item,i) of series[1]" :key="i" v-text="item.title"></router-link></li>
                <li><a href="#" :class="set[i]" v-for="(item,i) of series[0]" :key="i" v-text="item.subtitle"></a></li>
              </ul>
            </div>   
          </div> 
          <div class="zuo_one" v-show="num==2" @mouseleave="getNum(idx)">
            <div class="zuo_one_s">
              <ul>
                <li><router-link to="/Second" :class="settaa[i]" v-for="(item,i) of series[2]" :key="i" v-text="item.title"></router-link></li>
                <li><a href="#" :class="set[i]" v-for="(item,i) of series[0]" :key="i" v-text="item.subtitle"></a></li>
              </ul>
            </div>   
          </div> 
          <div class="zuo_one" v-show="num==3" @mouseleave="getNum(idx)">
            <div class="zuo_one_s">
              <ul>
                <li><router-link to="/Second" :class="settaa[i]" v-for="(item,i) of series[3]" :key="i" v-text="item.title"></router-link></li>
                <li><a href="#" :class="set[i]" v-for="(item,i) of series[0]" :key="i" v-text="item.subtitle"></a></li>
                <img :src="item.src" alt="" :class="set[i]"  v-for="(item,i) of series[3]" :key="i">              
              </ul>
            </div>   
          </div> 
          <div class="zuo_one" v-show="num==4" @mouseleave="getNum(idx)">
            <div class="zuo_one_h">
              <router-link to="/Second"><img :src="item.src" alt="" :class="set[i]"  v-for="(item,i) of series[4]" :key="i"></router-link>
            </div>   
          </div>        
    </div> -->
    
  </div>
</template>
<script>
export default {
  data(){
    return{
      //active:"",
      num:-1,
      series:[
        [
          {title:"一周热门",subtitle:"近七天最受欢迎"},
          {title:"人气菜肴",subtitle:"超过50人收藏"},
          {title:"冬季食谱",subtitle:"看看大家都在吃啥"},
          {title:"早餐",subtitle:"像国王一样早餐"},
          {title:"高颜值",subtitle:"颜控专用渠道"},
          {title:"凉菜",subtitle:"精选2600道"},
          {title:"热菜",subtitle:"精选2600道"},
          {title:"主食",subtitle:"精选2600道"},
          {title:"小吃",subtitle:"精选2600道"},
          {title:"酱泡腌菜",subtitle:"精选2600道"},
          {title:"新秀菜谱",subtitle:"最新的优秀菜谱"},
          {title:"所有分类",subtitle:"每天的神奇饭盒"}
        ],
        [
          {title:"秋葵",subtitle:"近七天最受欢迎"},
          {title:"西红柿",subtitle:"超过50人收藏"},
          {title:"黑木耳",subtitle:"看看大家都在吃啥"},
          {title:"小龙虾",subtitle:"红到勾心，辣到流泪"},
          {title:"螃蟹",subtitle:"全民爆红"},
          {title:"鸡翅",subtitle:"精选1153道"},
          {title:"肉禽类",subtitle:"共231种"},
          {title:"水产品",subtitle:"共221种"},
          {title:"蔬菜瓜菌",subtitle:"共271种"},
          {title:"鲜果干果",subtitle:"共241种"},
          {title:"米面豆乳",subtitle:"共331种"},
          {title:"营养排行",subtitle:"看看谁TOP"}
        ],
        [
          {title:"最新推荐",subtitle:"饮食健康知识"},
          {title:"饮食常识",subtitle:"健康知识"},
          {title:"瘦身美容",subtitle:"应该知道的小知识"},
          {title:"气血双补",subtitle:"食疗专题"},
          {title:"痛经",subtitle:"痛经吃什么好"},
          {title:"驱寒暖身",subtitle:"有温度的食材"},
          {title:"对抗雾霾",subtitle:"雾霾天吃什么"},
          {title:"失眠",subtitle:"失眠吃什么"},
          {title:"食疗食补",subtitle:"常见症状的食疗专题"}
        ],
        [
          {title:"菜单",subtitle:"饮食健康知识"},
          {title:"家常菜谱",subtitle:"健康知识"},
          {title:"食疗食补",subtitle:"应该知道的小知识"},
          {src:require("../../assets/l03.jpg")},
          {src:require("../../assets/l02.jpg")}
        ],
        [
          {src:require("../../assets/l01.jpg")},
          {src:require("../../assets/tu.jpg")}
        ],

      ],  
      list:["食谱大全","食材大全","饮食健康","专题专区","一起红"],
      sett:["sett1","sett2","sett3","sett4","sett5"],
      set:["set1","set2","set3","set4","set5","set6","set7","set8","set9","set10","set11","set12"],
      setta:["seta1","seta2","seta3","seta4","seta5","seta6","seta7","seta8","seta9","seta10","seta11","seta12"],
      settaa:["setaa1","setaa2","setaa3","setaa4","setaa5","setaa6","setaa7","setaa8","setaa9","setaa10","setaa11","setaa12"],
      image:[
        {src:require("../../assets/dianzan1.png")},
        {src:require("../../assets/dianzan1.png")},
        {src:require("../../assets/dianzan1.png")},
        {src:require("../../assets/dianzan1.png")},
        {src:require("../../assets/dianzan1.png")}
      ],
      innerWidth:window.innerWidth*1,//初始时，设置默认的宽度为当前窗口的宽度
      i:0,//当前播放的是第几张图片
      ulClass:{//定义所有图片的容器div上是否有transition 
        hasTrans:true//在css中提前定义好的样式类，其中含有transition属性
      },
      canClick:true,
      imgs:[
        {src:require("../../assets/01.jpg")},
        {src:require("../../assets/02.jpg")},
        {src:require("../../assets/03.jpg")},
        // {src:require("../../assets/04.jpg")},
        // {src:require("../../assets/05.jpg")},
        {src:require("../../assets/06.jpg")}
      ],
      timer:null,
    }
  },
  created(){
      window.addEventListener("resize",()=>{
        this.innerWidth=window.innerWidth*1;
      })
     this.start();
  },
  methods: {
    //  leave(idx){
    //    if(window.event.toElement==null) return;
    //    this.num=-1;}
    //  },
    getNum(idx){
      this.num=idx
    },
    
    stop(){
      clearInterval(this.timer);
    },
    start(){
      this.timer=setInterval(()=>{
        this.move(1);
      },3000)
    },
    move(i){
      if(this.canClick){
        this.canClick=false;
        if(i==-1&&this.i==0){//如果向右移动，且正在显示第1张图片，就要骗
          this.ulClass.hasTrans=false;//去掉父级div上的transition样式类
          setTimeout(()=>{//等50ms后，再进行后续操作
            this.i=this.imgs.length; //悄悄的将父级div移动到最左边
            setTimeout(()=>{//等50ms后，再进行后续操作
              this.ulClass.hasTrans=true;//打开父级div上的transition效果
              this.i+=i;//正式向右移动一次
              setTimeout(()=>{//200s后，才允许单击
                this.canClick=true;
              },200)
            },50)
          },50)
        }else if(i==1&&this.i==this.imgs.length){
          //如果向左移动，且现在已经显示最后一张了
          //可以先带transition效果，左移一次
          //等左移完，再去掉transition效果，骗用户
            this.ulClass.hasTrans=false;
            setTimeout(()=>{//等50ms后，瞬间将父级div移动到显示第一张图片
              this.i=0;
              setTimeout(()=>{//等50ms后，再次启用transition，为下次提供动画
                this.ulClass.hasTrans=true;
                this.i+=i;
                setTimeout(()=>{//稍等片刻之后允许单击
                  this.canClick=true;
                },50)
              },50)
            },50)
          
        }else{//如果不是两端的情况，则保持原来的逻辑
          this.i+=i;
          setTimeout(()=>{
            this.canClick=true;
          },300)
        }
      }
    },
    moveTo(i){
      if(this.canClick){
        this.i=i;
        this.canClick=false;
        setTimeout(()=>{
          this.canClick=true
        },600)
      }
    }
  },
  computed:{
    ulStyle(){
      var marginLeft=-this.i*this.innerWidth+'px';
      var width=this.innerWidth*(this.imgs.length+1)+'px';
      return {width,marginLeft}
    }
  }
}
</script>
<style scoped>
    .carousel{
      overflow:hidden;
      width:100%;
      position:relative;
    }
    .carousel>.carousel-inner:after{
      display:block;
      content:'';
      clear:both
    }
    .carousel>.carousel-inner>.carousel-item{ 
      display:block;
      float:left;
      
    }
    .carousel>.carousel-inner>.carousel-item img{
      width:60%;
      height:530px;
    }
    /*重写指示符的样式*/
    .carousel-indicators{
      bottom:130px;
      display:flex;
      list-style:none;
      position:absolute;
      bottom:10px;
      right:18px;
    }
    .carousel-indicators li{
      width:15px;height:15px;
      border-radius:50%;
      border:3px solid #999;
      margin:0 8px;
    }
    .carousel>.carousel-inner.hasTrans{
     transition:all .2s linear;
   }
   .carousel-indicators>li:hover, .carousel-indicators>li.active{
    transform:scale(1.3);
    border-color:#f00;
  }
    .carousel-control-prev,.carousel-control-next{
      width:40px;height:60px;
      border-radius:0.25rem;
      top:40%;
      display:block;
      position:absolute;
      left:340px;
      text-align:center;
      vertical-align:middle;
      
      }
    .carousel-control-next{
      left:1440px;
    }
    .carousel-control-prev:hover,.carousel-control-next:hover{
      background-color:rgba(95, 95, 92, 0.3);
    }
    .carousel-control-prev-icon>img,.carousel-control-next-icon>img{width:30px!important;height:30px;display:block;color:black;position:absolute;top:25%;left:18%}
    .carousel-control-next-icon>img{left:18%}
    .zhu{position:relative;}
    .daquan{position:absolute;top:0;left:0;height:99%;width:22%;background:rgba(0,0,0,.2);padding-top:3rem}
    .daquan ul{list-style:none;width:80%;height:60px;}
    .sett1{margin-top:45px;margin-left:-20px;font-size:18px;color:#fff;}
    .sett2,.sett3,.sett4,.sett5{margin-top:8px;margin-left:-20px;font-size:18px;color:#fff}
    .daquan a{display:flex;display:block;width:100%;margin-left:0;text-align:center;line-height:90px;background-image:"../../../public/img/icon.png"!important}
    /* .daquan a:hover{background:#f00} */
    .zuo_one{display:flex;justify-content:space-around;flex-wrap:wrap;position:absolute;top:0;left:22%;width:400px;height:99%;background:#fff;}
    /*.zuo_one_s{display:flex;flex-direction:column;height:40px;}
    .zuo_one_s a{color:black;}
    .zuo_one_s a:first-child:hover{color:red;}
    .zuo_one_s:first-child,.zuo_one_s:nth-child(2),.zuo_one_s:nth-child(3){margin-top:45px;}
    .zuo_one_s:nth-child(4),.zuo_one_s:nth-child(5),.zuo_one_s:nth-child(6){margin-top:-20px;}
    .zuo_one_s:nth-child(7),.zuo_one_s:nth-child(8),.zuo_one_s:nth-child(9),.zuo_one_s:nth-child(10),.zuo_one_s:nth-child(11),.zuo_one_s:nth-child(12){margin-top:-20px;}
    .zuo_one_size{color:black;font-size:10px;}
    .set1{margin-left:25px;display:block;}
    .set2{margin-left:25px;display:block;}
    .set3{margin-left:25px;display:block;}
    .set4{margin-left:20px;display:block;}
    .set5{margin-left:25px;display:block;}
    .set6{margin-left:25px;display:block;}*/
    .zuo_one_s ul{display:flex;flex-wrap:wrap;list-style:none;position:relative}
    .zuo_one_s ul li a{display:inline-block;color:black}
    .zuo_one_s ul li a:hover{color:red}
    .zuo_one_s ul img{width:40%;height:70%;margin-top:-60px;margin-left:0;display:inline-block}
    .zuo_one_s ul img:last-child{margin-top:-62px;margin-right:0px;}
    .zuo_one_h img:first-child{width:40%;height:50%;margin-top:25px;margin-left:120px;display:inline-block}
    .zuo_one_h img:last-child{width:90%;height:40%;margin-top:-30px;margin-left:20px;}
    /*title*/ 
    .set1{margin-top:70px;margin-bottom:30px;margin-left: 55px;margin-right:35px}
    .set2{margin:30px 35px}
    .set3{margin:30px 35px}
    .set4{margin:30px 68px}
    .set5{margin:30px 21px}
    .set6{margin:30px 65px}
    .set7{margin:30px 68px}
    .set8{margin:30px 28px}
    .set9{margin:30px 65px}
    .set10{margin-left: 55px;margin-right:35px}
    .set11{margin:30px 35px}
    .set12{margin:30px 35px}
    /*2title*/ 
    .seta1{margin-top:70px;margin-bottom:30px;margin-left: 75px;margin-right:35px}
    .seta2{margin:30px 35px}
    .seta3{margin:30px 35px}
    .seta4{margin-bottom:30px;margin-left: 68px;margin-right:35px}
    .seta5{margin:30px 35px}
    .seta6{margin:30px 48px}
    .seta7{margin-bottom:30px;margin-left: 68px;margin-right:35px}
    .seta8{margin:30px 34px}
    .seta9{margin:30px 30px}
    .seta10{margin-bottom:30px;margin-left: 65px;margin-right:35px}
    .seta11{margin:30px 20px}
    .seta12{margin:30px 38px}
    /*3title*/ 
    .setaa1{margin-top:70px;margin-bottom:50px;margin-left: 55px;margin-right:35px}
    .setaa2{margin:50px 35px}
    .setaa3{margin:50px 35px}
    .setaa4{margin:50px 59px}
    .setaa5{margin:50px 20px}
    .setaa6{margin:50px 60px}
    .setaa7{margin:50px 59px}
    .setaa8{margin:50px 20px}
    .setaa9{margin:50px 60px}

</style>