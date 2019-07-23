<template>
    <div class="main">
        <div class="container">
            <div class="left">
                <a href="#"><img src="../../../public/img/logo_2016.png" alt=""></a>
                <div><a href="#">烘焙+</a></div>
            </div>
            <div class="right">
                <input class="right_left" type="text">
                <a class="btn" title="搜索" @click="search()">
                    <img src="../../assets/icon/sousuo.png" />
                    <span>搜索</span>
                </a>
            </div>
        </div>
        <ul class="one">
            <li><a href="">首页</a></li>
            <li><a href="">烘焙课堂</a></li>
            <li><a href="">烘焙食谱</a></li>
            <li><a href="">烘焙用品</a></li>
            <li><a href="">烘焙圈子</a></li>
        </ul>
        <div class="middle">
            <div class="containers" @mouseleave="start" @mouseenter="stop">
                <div class="tp" :style="ulStyle" :class="ulClass">
                    <div v-for="(img,i) of tu" :key="i">
                        <a href="#"><img :src="img.src" alt=""></a>
                    </div>
                    <div>
                        <a href="#"><img :src="tu[0].src" alt=""></a>
                    </div>
                </div>
                <ul class="dian">
                    <li v-for="(img,index) of tu" :key="index" :class="index==i?'active':''"  @click="moveTo(index)"></li>
                </ul>
            </div>
            <div class="you">
                <div class="youz_one">
                    <a href="#"><img src="../../assets/Y01.jpg" alt=""></a>
                    <div>
                        <a href="#">ACA是爱吃第四届烘焙大赛</a>
                        <p>是爱吃，就要大声说出来！是爱吃，就要放开吃！美食天下&ACA北美电器“第四届烘焙节暨是爱吃”等你来战。三轮挑战，现金+ACA产品大奖等你来拿~...</p>
                    </div>
                </div>
                <div class="youz_one">
                    <a href="#"><img src="../../assets/Y02.png" alt=""></a>
                    <div>
                        <a href="#">“派”系纷争，你是咸甜哪一派？</a>
                        <p>南北方之间的粽子甜咸之争让人印象深刻，西方的经典美食——派（PIE）也展开了如火如荼的“舌尖”纷争…“派” 系纷争，你是咸、甜哪一派？…</p>
                    </div>
                </div>
                <div class="youz_one" style="border-bottom:1px solid #ddd;padding-bottom:12px">
                    <a href="#"><img src="../../assets/Y03.jpg" alt=""></a>
                    <div>
                        <a href="#">味蕾的享受 - 乳酪火腿面包</a>
                        <p>用奶酪乳酪芝士片和脆皮肠当馅料的一款面包，奶香浓郁，口感极好，一口咬下去，面包松软，乳酪香滑细腻，火腿肠脆脆QQ，每一口都是享受…</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="two">
            <a href="#"><img src="../../../public/img/tu.jpg" alt=""></a>
        </div>
        <div class="three">
            <div class="left_a">
                <div class="left">
                    <ul>
                        <li><a style="border-bottom:1px solid red;padding-bottom:10px;" href="#">烘焙产品抢先看</a></li>
                    </ul>
                    <ul>
                        <li><a href="#">烤箱</a></li>
                        <li><a href="#">面包机</a></li>
                        <li><a href="#">搅拌机</a></li>
                        <li><a href="#">烘焙磨具</a></li>
                    </ul>
                </div>
                <div class="left_f" v-for="(item,i) of list" :key="i">
                    <div class="left_f_a" style="font-size:20px"><a href="#">{{item.title}}</a></div>
                    <div class="left_z">
                        <a href="#"><img :src="'http://127.0.0.1:3000/img/second/'+item.img" alt=""></a>
                        <div class="left_b">
                            <p href="#" style="font-size:14px;color:#666">{{item.detail}}</p>
                            <p style="margin-top:35px">{{item.bz}}</p>
                        </div>
                    </div>
                </div>
                <div class="left_t" style="margin-top:25px;margin-bottom:15px;">
                    <span>烘焙圈</span>
                </div>
                <div style="margin-bottom:20px" class="top" v-for="(item,idx) of lists" :key="idx" @mouseenter="enter(idx)" @mouseleave="leave(idx)" :class="{active:idx==num}">
                    <a href="#"><img class="top_left" :src="'http://127.0.0.1:3000/img/three/'+item.img1" alt=""></a>
                    <div style="margin-left:20px">
                        <div class="top_a">
                            <a href="#"><img class="top_left_top" :src="'http://127.0.0.1:3000/img/three/'+item.img2" alt=""></a>
                            <div style="margin-left:10px">
                                <a href="#">{{item.title}}</a>
                                <p>{{item.sdate}}</p>
                            </div>
                        </div>
                        <a href="">{{item.uname}}</a>
                        <div class="foot"  v-show="idx==num">
                                <img :src="'http://127.0.0.1:3000/img/three/'+item.img3" alt="">
                                <a href="">{{item.num1}}</a>
                            <img :src="'http://127.0.0.1:3000/img/three/'+item.img4" alt="">
                            <a href="">{{item.num2}}</a>
                            <img style="width:18px;height:18px" :src="'http://127.0.0.1:3000/img/three/'+item.img5" alt="">
                            <a href="#">{{item.num3}}</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="right_a">
                <div class="right">
                    <img style="background:transparent" src="../../assets/a1.jpg" alt="">
                    <div class="you">
                        <a href="#">友加香辣烧烤料100g厨房烤肉调味料</a>
                        <p>满4件包邮 满5送鱼香肉 满7送麻辣基</p>
                    </div>
                </div>
                <div :class="{fixTitle:whether}">
                <div style="border-bottom:1px solid #ddd;padding-bottom:10px;"  >
                    <a style="display:block;margin-top:35px;" href="#">推荐食谱</a>
                </div>
                <div style="display:flex;justify-content:spacing-around">
                    <ul class="aaa">
                        <li><a href="#">吐司</a></li>
                        <li><a href="#">香葱面包</a></li>
                        <li><a href="#">马芬</a></li>
                        <li><a href="#">抹茶蛋糕</a></li>
                        <li><a href="#">水果蛋糕</a></li>
                        <li><a href="#">手指饼干</a></li>
                        <li><a href="#">蛋挞</a></li>
                    </ul>
                    <ul class="aaa">
                        <li><a href="#">三明治</a></li>
                        <li><a href="#">全麦面包</a></li>
                        <li><a href="#">蛋糕卷</a></li>
                        <li><a href="#">慕斯蛋糕</a></li>
                        <li><a href="#">苏打饼干</a></li>
                        <li><a href="#">卡通饼干</a></li>
                        <li><a href="#">披萨</a></li>
                    </ul>
                    <ul class="aaa">
                        <li><a href="#">餐包</a></li>
                        <li><a href="#">花式面包</a></li>
                        <li><a href="#">戚风蛋糕</a></li>
                        <li><a href="#">奶油蛋糕</a></li>
                        <li><a href="#">曲奇饼干</a></li>
                        <li><a href="#">酥</a></li>
                        <li><a href="#">布丁</a></li>
                    </ul>
                    <ul class="aaa">
                        <li><a href="#">芝士面包</a></li>
                        <li><a href="#">肉松面包</a></li>
                        <li><a href="#">芝士蛋糕</a></li>
                        <li><a href="#">乳酪蛋糕</a></li>
                        <li><a href="#">夹心饼干</a></li>
                        <li><a href="#">泡芙</a></li>
                        <li><a href="#">慕斯</a></li>
                    </ul>
                </div>
                </div>
            </div>
        </div>
    </div>
</template>
<script>
export default {
    data(){
        return{
            canClick:true,
            ulClass:{
                hasTrans:true
            },
            innerWidth:500,
            i:0,
            timer:null,
            list:[],
            lists:[],
            num:-1,
            whether:false,
            tu:[
                {src:require("../../assets/z01.jpg")},
                {src:require("../../assets/z02.jpg")},
                {src:require("../../assets/z03.jpg")},
                {src:require("../../assets/z04.jpg")}
            ]
        }
    },
    mounted() {
        window.addEventListener("scroll",this.handleScroll)
    },
    methods: {
        moveTo(i){
            if(this.canClick){
                this.i=i;
                this.canClick=false;
                setTimeout(()=>{
                this.canClick=true
                },600)
                }
        },
        start(){
            this.timer=setInterval(()=>{
               this.i++;
              if(this.i>3){
                this.ulClass.hasTrans=false;
                setTimeout(()=>{//等50ms后，瞬间将父级div移动到显示第一张图片
                this.i=0;
                setTimeout(()=>{//等50ms后，再次启用transition，为下次提供动画
                    this.ulClass.hasTrans=true;
                    this.i+=i;
                },50)
                },100)
              }
            },2500)
        },
        stop(){
            clearInterval(this.timer)
        },
        
        search(){
            location.href="http://www.baidu.com"
        },
        leave(index){
            this.num=-1
        },
        enter(index){
            this.num=index
        },
        handleScroll(){
            let scrollTop=window.pageYOffset;
            if(scrollTop>610){
                this.whether=true;
            }else{
                this.whether=false
            }
            

        }
       
    },
    created() {
        this.start();
        var url="second";
        this.axios.get(url).then(result=>{
            console.log(result.data);
            this.list=result.data;
        });
        var url1="three";
        this.axios.get(url1).then(result=>{
            console.log(result.data);
            this.lists=result.data;
        });

    },
    computed: {
       ulStyle(){
           var marginLeft=-this.i*this.innerWidth+'px';
           var width=this.innerWidth*(this.tu.length+1)+'px';
           return{width,marginLeft}
       }
    },
}
</script>
<style scoped>
    .main{
        width:50%;
        margin:25px auto;
    } 
    .container{
        display:flex;
        align-items:center;
        justify-content:space-between;
        
    }
    .container>.left{ display:flex;align-items:center;}
    .container>.left>a img{width:50%;height:50%;}
    .container>.left div a{font-size:27px;color:red;margin-top:4px;}
    .container>.left div a:hover{border-bottom:2px solid red;}
    .container>.left div{margin-left:-120px;}
    .right{display:flex;width:25%;margin-top:10px}
    .right .btn span{font-size:14px;line-height:30px;color:#fff;}
    .btn:hover{background:red;}
    .right_left{width:100%;height:30px!important;background-color:none!important;border-right:none;border-radius:3px 0 0 3px;}
    .btn{width:50%;height:30px;text-align:center;vertical-align:middle;background:#999;border-radius:0 3px 3px 0;}
    .btn img{width:45%;height:70%;margin-left:-10px;padding-top:8px;}
    .one{list-style:none;display:flex;align-items:center;width:100%;height:40px;background:#b02020;}
    .one li{display:inline-block;width:120px;margin-left:-20px;;height:100%;margin-right:14px}
    .one li:first-child{margin-left:-42px;width:100px;background:#a21f25}
    .one li:first-child a{margin-left:30px}
    .one li a{color:#fff;line-height:40px;text-align:center;margin-left:26px}
    .one li:hover{background:#a21f25}
    .two a img{width:100%;height:80px;background:transparent}
    .three{display:flex;justify-content:space-between;}
    .three a{color:black;font-size:18px;}
    .three a:hover{color:red;}
    .three .left{display:flex;justify-content:space-between;align-items:center;list-style:none; border-bottom:1px solid #ddd;padding-bottom:10px;}
    .three .left_a{display:flex;flex-direction:column;width:62%;margin-top:2px;}
    .three .left ul{list-style:none;display:flex;margin:0px;padding:0}
    .three .left ul li{margin-top:18px;}
    .three .left ul:first-child li{}
    .three .left ul:last-child li{margin-left:20px;}
    .three .right_a{width:34%;display:flex;flex-direction:column;margin-top:15px}
    .three .right{display:flex;width:100%;}
    .three .right img{width:30%;height:12%;}
    .three .right .you{margin-left:8px;width:100%}
    .three .right .you p{margin-top:6px}
    .left_f{margin-top:25px;}
    .left_f img{width:180px;height:180px;margin-top:25px}
    .left_z{display:flex}
    .left_b{margin-top:25px;margin-left:25px;}
    .left_f_a a:hover{border-bottom:2px solid red}
    .aaa:first-child li {list-style:none;margin-left:-35px;}
    .aaa li {list-style:none;margin-bottom:10px;}
    .aaa a{font-size:14px;color:#333;}
    .aaa a:hover{border-bottom:1px solid red;}
    .aaa+.aaa{margin-left:-12px}
    .top,.top_a{display:flex;}
    .top_left{width:140px;height:140px;}
    .top_left_top{width:48px;height:48px;border-radius:50%;}
    .top_a{margin-bottom:10px}
    .top a{font-size:14px;color:#333;}
    .left_t{border-bottom:1px solid #ddd;padding-bottom:7px}
    .left_t span{border-bottom:1px solid red;padding-bottom:7px}
    .foot img{width:20px;height:20px;margin-left:5px}
    .foot{margin-left:310px;text-align:center;margin-top:23px;display:flex;align-items:center}
    .fixTitle{position:fixed;top:-20px;z-index:999;}
    .middle{display:flex;justify-content:space-between}
    .you{width:48%}
    .youz_one{display:flex;margin-bottom:10px}
    .youz_one img{width:48px;height:48px;border-radius:50%;margin-right:10px}
    .youz_one div a{font-size:20px;color:#ba2020}
    .youz_one div a:hover{border-bottom:2px solid #ba2020}
    .youz_one div p{color:#666;font-size:10px;padding-top:8px}
    .containers{width:48%;overflow:hidden;position:relative}
    .tp{display:flex;}
    .dian{display:flex;position:absolute;top:84%;right:35%;list-style:none}
    .dian li{width:12px;height:12px;border-radius:50%;background:white;margin-left:10px}
    .dian li.active,.dian li:hover{background:red;}
    .hasTrans{transition:all .2s linear}
</style>