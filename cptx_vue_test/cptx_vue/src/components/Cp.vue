<template>
    <div>
        
            <div class="meishi">
                <div class="meishi_one">
                    <!-- <a href="#"><img src="../../public/img/logo.png" alt=""></a>   -->
                   
                    <ul class="meishi-ul">
                        <li v-for="(elem,i) of list" :key="i"><a href="">{{elem}}</a></li>
                    </ul>  
                </div>      
                <div class="input">
                    <!-- <input @keyup.13="search"  v-model="keywords" type="text">          -->
                    <Input search placeholder="搜索" style="width:200px;float:right;margin-left:14px" focus/>
                </div>
            </div> 
            <!-- <div class="wrap">
                <ul class="ul2">
                    <div>
                        <li v-for="(elem,i) of list2" :key="i" ><a href="#" style="text-decoration:none">{{elem}}</a></li>
                    </div>  
                    <div style="padding-left:50%;position:relative" @mouseenter="enter()"><a href="#" style="text-decoration:none" >浏览全部菜单</a><img style="padding-left:3px" alt="">              
                    </div>
                    <div class="caipu" @mouseleave="leave()" v-show="num==0">
                        
                        <div>
                            <h5 class="hh">场景/饮食方式</h5><br>
                            <ul>
                                
                                <li style="color:red">夏季食谱</li>
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
                                
                            </ul> 
                        </div>

                        <div>
                            <h5>所有菜谱</h5>
                            <ul>
                                <li style="margin-left:5px !important">最新发布</li>
                                <li>最新推荐</li>
                                <li>最热菜谱</li>
                                <li>家常菜谱</li>
                            </ul> 
                        </div>
                    </div>    
                </ul>    
            </div> -->
            <div class="detail"> 
                <div class="zuo" >
                    <div class="zuo_a" v-for="(item,i) of list3" :key="i">
                        <div>
                            <a href=""><img :src="'http://127.0.0.1:3000/img/cp/'+item.img" alt=""></a>
                        </div>
                        <div style="height:100%;width:60%">
                            <h6><a href="">{{item.title}}</a></h6>
                            <span><a href="">{{item.subtitle}}</a></span>
                            <p>{{item.detail}}</p>
                        </div>
                    </div>
                    <el-button style="width:60%;margin-top:2rem;background-color:#ec5541;color:white"  @click="loadMore">换一批</el-button>
                </div>
                <div class="you">
                    <div class="containers" @mouseleave="start" @mouseenter="stop">
                        <div class="tp" :style="ulStyle" :class="ulClass">
                            <div v-for="(img,idx) of tu" :key="idx" :style="{width:innerWidth+'px'}">
                                <router-link to="/Second"><img :src="img.src" alt="" :style="{width:innerWidth+'px'}"></router-link>
                            </div>
                            <div>
                                <a href="#"><img :src="tu[0].src" alt="" :style="{width:innerWidth+'px'}"></a>
                            </div>
                        </div>
                        <ul class="dian">
                            <li v-for="(img,index) of tu" :key="index" :class="index==idx?'active':''"  @click="moveTo(index)"></li>
                        </ul>
                    </div>
                    <div class="you_y">
                        <p style="font-size:20px;color:#ff6767;font-weight:400;margin:25px 0"><a href="">热门菜单</a></p>
                    </div>
                    <div class="you_x">
                        <div style="display:flex;margin-bottom:15px">
                            <div><a href=""><img style="width:50%;height:100%" src="../assets/xx01.jpg" alt=""></a></div>
                            <div style="margin-left:-75px">
                                <p><a style="font-size:16px;color:#333;line-height:1.2rem" href="">有馅饼才叫早餐呢</a></p>
                                <span style="color:#999">11篇</span>
                            </div>
                        </div>
                        <div style="display:flex;margin-bottom:15px">
                            <div><a href=""><img style="width:50%;height:100%" src="../assets/xx02.jpg" alt=""></a></div>
                            <div style="margin-left:-75px">
                                <p><a style="font-size:16px;color:#333;line-height:1.2rem" href="">丸子丸子,你别跑!</a></p>
                                <span style="color:#999">21篇</span>
                            </div>
                        </div>
                        <div style="display:flex;">
                            <div><a href=""><img style="width:50%;height:100%" src="../assets/xx03.jpg" alt=""></a></div>
                            <div style="margin-left:-75px">
                                <p><a style="font-size:16px;color:#333;line-height:1.2rem" href="">如花美菜，宴客有派</a></p>
                                <span style="color:#999">15篇</span>
                            </div>
                        </div>
                    </div>
                    <div class="you_y you_yy" style="margin-top:80px">
                        <p style="font-size:20px;color:#ff6767;font-weight:400;margin:25px 0"><a href="">一周热门菜谱</a></p>
                    </div>
                    <div class="you_x">
                        <div style="display:flex;margin-bottom:15px;">
                            <div><a href=""><img style="width:50%;height:100%" src="../assets/xx01.jpg" alt=""></a></div>
                            <div style="margin-left:-75px">
                                <p><a style="font-size:16px;color:#333;line-height:1.2rem" href="">有馅饼才叫早餐呢</a></p>
                                <span style="color:#999">11篇</span>
                            </div>
                        </div>
                    </div>
                        <div class="you_xx">
                            <div class="one">
                                <img src="../assets/h01.jpg" alt="">
                                <p><a href="">利物浦大学住宿</a></p>
                            </div>
                            <div class="one"><img src="../assets/h02.jpg" alt=""><p><a href="">什么叫UI设计</a></p></div>
                            <div class="one"><img src="../assets/h03.jpg" alt=""><p><a href="">学平面设计</a></p></div>
                            <div class="one"><img src="../assets/h04.jpg" alt=""><p><a href="">婚纱照前十</a></p></div>
                        </div>
                    
                </div>
            </div>
            <footera style="margin-top:3rem;"></footera>
    </div>

</template>
<script>
import Footer from "./Footer"
export default {
    data(){
        return{
            list:["菜谱首页","分类","菜单","排行","食材","食疗食补"],
            list2:["一周热门","当季最热","人气菜肴","明星菜谱","食神菜单"],
            num:-1,
            list3:[],
            pno:0,
            ps:6,
            canClick:true,
            ulClass:{
                hasTrans:true
            },
            innerWidth:window.innerWidth*0.3,
            idx:0,
            timer:null,
            tu:[
                {src:require("../assets/z02.jpg")},
                {src:require("../assets/z03.jpg")},
                {src:require("../assets/z04.jpg")}
            ]
        }
    },
    components:{
        "footera":Footer,
    },
    created() {
        this.loadMore();
        this.start();
        window.addEventListener("resize",()=>{
        this.innerWidth=window.innerWidth*0.3;
      })
    },
    methods: {
        enter(){
            this.num=0;
        },
        leave(){
            this.num=-1;
        },
        loadMore(){
            var url="five";
            if(this.pno<3){
            //当前页码加1
            this.pno++;
            //创建参数对象
            var obj={pno:this.pno,pageSize:this.ps}
            this.axios.get(url,{params:obj}).then(result=>{
                console.log(result.data);
                //数据覆盖
                //this.list=result.data.data;
                //数据追加
                //var rows=this.list3.concat(result.data);
                this.list3=result.data;
            })
            }else{
                this.pno=0
            }
        },
        moveTo(idx){
            if(this.canClick){
                this.idx=idx;
                this.canClick=false;
                setTimeout(()=>{
                this.canClick=true
                },600)
                }
        },
        start(){
            this.timer=setInterval(()=>{
               this.idx++;
              if(this.idx>2){
                this.ulClass.hasTrans=false;
                setTimeout(()=>{//等50ms后，瞬间将父级div移动到显示第一张图片
                this.idx=0;
                setTimeout(()=>{//等50ms后，再次启用transition，为下次提供动画
                    this.ulClass.hasTrans=true;
                    this.idx+=idx;
                },50)
                },100)
              }
            },2500)
        },
        stop(){
            clearInterval(this.timer)
        },
    },
    computed: {
       ulStyle(){
           var marginLeft=-this.idx*this.innerWidth+'px';
           var width=this.innerWidth*(this.tu.length+1)+'px';
           return{width,marginLeft}
       }
    },
}
</script>
<style scoped>
    .meishi{width:80%;margin:0 auto;display:flex;margin-top:15px;justify-content:space-between;margin-bottom:10px}
    .meishi_one{display:flex;align-items:center}
    .meishi a img{width:50%;height:50%}
    .but{
        width:60px;height:30px;
        background: #FF838B;
        border-radius: 5px;
        color: #fff;
        margin-left:-100px;
        margin-right:40px;      
        font-size: 15px;   
        margin-top:10px;      
        }
    .meishi-ul{list-style:none;display:flex;font-size:20px;color:#333;margin-top:15px}
    .meishi-ul li{margin-left:20px;}
    .meishi-ul li a{color:#333;}
    .meishi-ul li a:hover{color:#ff6767}
    .input{margin-top:20px !important;}

    .ul2{list-style:none;display:flex;border-bottom:1px solid #ff6767;border-top:1px solid #ff6767;font-size:17px;justify-content:space-between;align-items:center}
    .ul2 div li+li{margin-left:25px}
    .ul2 li a{color:#000;}
    .ul2{width:60%;margin:0 auto;display:flex}
    .ul2 div:first-child{display:flex;padding:4px 0;}
    .ul2 div:nth-child(2) a{color:#333;}
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
    .ul2 li:first-child a{color:#ff6767}
    .ul2 li a:hover{color:#ff6767}
    .caipu ul{list-style:none;height:80px;text-align:center}
    .caipu ul li+li{margin-right:12px}
    .caipu ul li:first-child{margin-left:12px}
    .caipu ul li{font-size:12px;}
    .caipu div{width:30%;text-align:center}
    .caipu div:first-child{margin-right:12px}
    .caipu div+div{margin-right:13px}
    .caipu h5{margin-bottom:10px}
    .hh{margin-top:36px}
    .detail{width:80%;margin:0 auto;display:flex;justify-content:space-between!important}
    .detail .zuo{display:flex;flex-direction:column;margin-top:20px}
    .zuo_a{display:flex;flex-wrap:wrap;overflow:hidden;height:80%; margin-bottom: 1rem}
    .zuo_a img{width:60%;height:90%}
    .zuo_a a img:hover{transform:scale(1.1);transition:all .5s}
    .zuo_a div+div{margin-bottom:50px;margin-left:-110px;display:flex;flex-direction:column;flex-wrap:wrap}
    .zuo_a h6 a{font-size:20px;font-weight:400;color:#333!important;margin-bottom:25px}
    .zuo_a h6{margin-bottom:10px}
    .zuo_a h6 a:hover{color:#ff6767!important}
    .zuo_a span a{font-size:14px;color:#666!important;}
    .zuo_a p a{margin-bottom:10px;color:#999!important;line-height:1.5rem}
    .zuo{width:60%}
    .you{width:33%;}
    .containers{width:100%;overflow:hidden;position:relative;margin-top:20px}
    .tp{display:flex;}
    .containers img{width:40%;height:100%}
    .dian{display:flex;position:absolute;top:93%;right:35%;list-style:none}
    .dian li{width:12px;height:12px;border-radius:50%;background:white;margin-left:10px}
    .dian li.active,.dian li:hover{background:red;}
    .hasTrans{transition:all .2s linear}
    .you_x p a:hover{color:#ff6767!important;text-decoration:underline}
    .you_y p{border-bottom:1px solid #ddd;padding:8px}

    .you_y p a{border-bottom:3px solid #ff6767;padding:10px;font-size:20px;color:#ff6767;font-weight:400;margin-left:-8px}
    .you_xx{display:flex;justify-content:space-between;width:95%;border:1px solid #ddd;flex-wrap:wrap;}
    .you_xx .one{width:49%;padding:4px;text-align:center}
    .you_xx .one a{color:#000;font-size:14px;line-height:16px;font-family:"微软正黑"}
    .you_xx .one img{width:100%;height:80%}
    .you_xx .one img:hover{border:1px solid #ff6767}
    .you_xx .one a:hover{color:#ff6767}
    @media screen and (max-width: 1000px) {
        .zuo_a div:last-child{display:none;}
        .zuo_a div:first-child{width:100%;}
        .you_yy{margin-top:500px!important}
    }
    @media screen and (max-width: 1800px) {
        .ul2 li:last-child{display:none;}
    }
    @media screen and (max-width: 1535px) {
        .ul2 li:nth-child(4){display:none;}
        .meishi-ul li:last-child{display:none;}
    }
</style>