<template>
<div>
    <header2 ></header2>
 <!-- <div class="meishi">
        <a href="#"><img src="../../assets/logo.png" alt=""></a>  
        <button class="but">菜谱</button>
        <ul class="meishi-ul">
            <li v-for="(elem,i) of list" :key="i">{{elem}}</li>
        </ul>        
       <div class="input">
         <input @keyup.13="search"  v-model="keywords" type="text">          
        <Input search placeholder="搜索" style="width:200px;float:right;margin-left:14px" focus/>
       </div> 
</div>


        <ul class="ul2">
            <li v-for="(elem,i) of list2" :key="i" ><a href="#" style="text-decoration:none" @focus=on @blur=out>{{elem}}</a></li>
            
            <li style="padding-left:180px;position:relative" ><a href="#" style="text-decoration:none"  @mouseenter="enter()">浏览全部菜单</a><img style="padding-left:3px" src="../../assets/arrow2.png" alt="">             
            </li>
            <div class="caipu" @mouseleave="leave()" v-show="num==0">
             <div>
                <h5>主食/小吃/饮品</h5>
                <ul>
                <li>米饭</li>
                <li>炒饭</li>
                <li>饺子</li>
                <li>馒头花卷</li>
                <li>粥</li>
                <li>米饭</li>
                <li>炒饭</li>
                <li>饺子</li>
                <li>馒头花卷</li>
                <li>粥</li>
                </ul>
             </div>
             <div>
                <h5>场景/饮食方式</h5>
                <ul>
                <li>早餐</li>
                <li>快手菜</li>
                <li>下午茶</li>
                <li>中式宴请</li>
                <li>粥</li>
                <li>夏季食谱</li>
                <li>高颜值</li>
                <li>宿舍时代</li>
                <li>中式宴请</li>
                <li>孕妇</li>
                </ul>
            </div>
            <div>
              <h5>中西菜系</h5>
              <ul>
                <li>川菜</li>
                <li>鲁菜</li>
                <li>闽菜</li>
                <li>粤菜</li>
                <li>湘菜</li>
                <li>日料</li>
                <li>韩餐</li>
                <li>泰国菜</li>
                <li>法国菜</li>
              </ul>  
            </div>
           <div>
            <h5>烘焙</h5>
            <ul>
                <li>面包</li>
                <li>派塔</li>
                <li>吐司</li>
                <li>批萨</li>
                <li>湘菜</li>
                <li>慕斯</li>
                <li>饼干</li>
                <li>曲奇</li>
                <li>布丁</li>
            </ul> 
            </div>
           <div>
            <h5>常见菜式</h5>
            <ul>
                <li>热菜</li>
                <li>主食</li>
                <li>小吃</li>
                <li>汤羹</li>
                <li>烘焙</li>
                <li>饮品</li>
                <li>家常菜</li>
                <li>曲奇</li>
                <li>开胃菜</li>
              </ul> 
            </div>

            <div>
                <h5>所有菜谱</h5>
                <ul>
                <li>最新发布</li>
                <li>最新推荐</li>
                <li>最热菜谱</li>
                <li>家常菜谱</li>
                </ul> 
            </div>
         </div>    
     </ul>  -->
<!-- <div class="tupian">
     <img src="../../assets/aaa.png" alt="">
</div>       -->
   <content7 style="margin-top:6rem;"></content7>
   <Footer style="margin-top:3rem;"></Footer>    
</div> 
</template>
<script>
 import content7 from "./content7.vue"
 import Header2 from "../Header2"
 import Footer from "../Footer"
export default {
   
  name: 'HelloWorld',
  data () {
    return {
    list:["菜谱首页","分类","菜单","排行","食材","食疗食补"],
    list2:["首页","热菜","凉菜","汤羹","主食","小吃","西餐","烘焙","零食"," 自制食材","最新菜谱"],
    keywords:"",               
    num:-1
    }
  },
  components:{
      content7,
      'header2':Header2,
      Footer,
  },
  methods: {
           search(){
               location.href="http://www.baidu.com";         
            },
            on(e){
                var e=e.target;
                console.log(e);  
                e.style.color="red";
            },
            out(e){
             e.target.style.color=""
            },

            enter(){                
                this.num=0;            
            },
            leave(){                
                this.num=-1;
            }
            
         },
  
}
</script>
<style scoped>
.meishi{width:60%;margin:0 auto;display:flex;margin-top:15px;justify-content:space-between;}
.meishi a img{width:108px;height:60px}
.but{
    width:60px;height:30px;
    background: #FF838B;
    border-radius: 5px;
    color: #fff;
    margin-left:-48px;      
    font-size: 15px;   
    margin-top:10px;      
    }
.meishi-ul{list-style:none;display:flex;font-size:20px;color:#333;margin-top:15px}
.meishi-ul li{margin-left:20px;}
.meishi-ul li:nth-child(2){color:red !important;}
.input{margin-top:20px !important;}


.ul2{list-style:none;display:flex;border-bottom:1px solid #ff6767;border-top:1px solid #ff6767;font-size:17px;justify-content:space-between;margin-top:-26px;}
.ul2 li:first-child{margin-left:4px}
.ul2 li+li{margin-left:22px}
.ul2 li a{color:#000;}
.ul2{width:60%;margin:0 auto;display:flex}

.caipu{
    margin:0 auto;display:flex;background: #fff;
    width: 60%;
    position: absolute;
    left: 380px;
    top: 112px;
    z-index: 50;
    justify-content:space-around;   
    box-shadow: 0 2px 3px #ddd;
    }
.tupian{width:60%;margin:0 auto;margin-top:6px;}
.tupian img{width:100%}
</style>


