<template>
<div>
    <div class="meishi">
       <a href="#"><img src="../../assets/logo.png" alt=""></a>  
        <button class="but">菜谱</button>
       <ul class="ul">
        <li v-for="(elem,i) of list" :key="i"><a href="#" style="text-decoration:none">{{elem}}</a></li>
       </ul>
       <div class="input">
        <!-- <input @keyup.13="search"  v-model="keywords" type="text">          -->
        <Input search placeholder="搜索" style="width:200px;position:absolute; top:1rem;right:15rem" focus/>
       </div> 
    </div>    
    <div class="wrap">
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
      </ul>
    </div>
     <S09></S09>
</div>
</template>
<script>
    export default {
        data(){//当前组件共享的数据
            return {
                list3:[],
                list:["菜谱首页","分类","菜单","排行","食材"],
                list2:["首页","热菜","凉菜","汤羹","主食","小吃","西餐","烘焙","零食"," 自制食材","最新菜谱"],
                keywords:"",               
                num:-1    
            }//数据
        },
         mounted(){
     window.onload=function(){
        var mySwiper = new Swiper('.swiper-container', {
          autoplay:true,
          loop:true
        })
      }
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
         created(){
        
        },
      
       
               
       }     
</script>
<style  scoped>
.meishi{width:60%;margin:0 auto;display:flex}
.meishi a img{width:108px;height:60px}
.but{background: #FF838B;
    border-radius: 5px;
    color: #fff;
    margin-left:20px;
   line-height:36px;
    font-size: 20px;
    padding: 0 10px;
    height:40px
    
    }
    .ul{list-style:none;display:flex;font-size:26px}
    .ul li+li{margin-left:18px}
.input{vertical-align:center;}
.input input{height:30px;border-radius:5px;margin-left:50px;margin-top:23px}
.input button{height:30px;border-radius:5px}
.input button:hover{background:#ff6767;}
.ul2{list-style:none;display:flex;border-bottom:1px solid #ff6767;border-top:1px solid #ff6767;font-size:17px}
.ul2 li+li{margin-left:22px}
.ul2 li a{color:#000;}
.ul2{width:990px;margin:0 auto;display:flex}

.caipu{margin:0 auto;display:flex;background: #fff;
    width: 990px;
    position: absolute;
    right: 204px;
    top: 131px;
    z-index: 50;
    justify-content:center;   
    box-shadow: 0 2px 3px #ddd;}
    .ull{width:990px;margin:0 auto;list-style:none;display:flex}
.img{width:50px;height:50px}
.ull span{font-size:14px}
.ull{line-height:12px;text-align:center;justify-content:space-around}
   
</style>
<div class="swiper-slide">
         <img style="margin-right:10px;width:300px;height:250px" src="../../assets/lunbo/7.png" alt="">
         <span class="img-sapn">萝卜丸子粉丝</span>
         <img style="margin-right:10px;width:300px;height:250px" src="../../assets/lunbo/8.png" alt="">
         <span class="img-sapn">鸡蛋豆腐饼</span>
         <img style="width:300px;height:250px" src="../../assets/lunbo/9.png" alt="">
         <span class="img-sapn">剁椒小芋仔</span>
      </div>
      <div class="swiper-slide">
         <img style="margin-right:10px;width:300px;height:250px;position:relative;" src="../../assets/lunbo/4.png" alt="">
          <span class="img-sapn">三杯鸡</span>
         <img style="margin-right:10px;width:300px;height:250px;position:relative;" src="../../assets/lunbo/5.png" alt="">
          <span class="img-sapn">台式三杯鸡</span>
         <img style="width:300px;height:250px;position:relative;" src="../../assets/lunbo/6.png" alt="">
          <span class="img-sapn">胡萝卜玉米汤</span>
      </div>
      