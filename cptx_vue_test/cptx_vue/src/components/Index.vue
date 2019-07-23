<template>
<div>
    <aheader style=""></aheader>
    <div class="main">
        
        <div class="container">
            
            <div class="left">
                <a href="#"><img src="../../public/img/logo.png" alt=""></a>
                <ul class="first-ui">
                    <li><a href="">首页</a></li>
                    <li><a href="">菜谱</a></li>
                    <li><a href="">食材</a></li>
                    <li><a href="">珍选</a></li>
                    <li><a href="">健康</a></li>
                    <li><a href="">专题</a></li>
                    <li><a href="">社区</a></li>
                    <li><a href="">话题</a></li>
                </ul>
            </div>
            <div class="right">
                <input class="right_left" type="text" v-model="foods">
                <!-- <a class="btn" title="搜索" @click="login()">
                    <img src="../assets/icon/sousuo.png" />
                    <span>搜索</span>
                </a> --> <Input search placeholder="搜索" style="width:200px;position:absolute; top:5.8rem;right:18.5rem" focus/>
            </div>
        </div>
        <carousel></carousel>
        <div class="one_h">
            <div class="one_h_one">
                <div class="one_w">
                    <div>
                        <span><a href="#">健康</a></span>
                        <span><a href="#">食疗</a></span>
                    </div>
                    <div><a href="#">健康首页</a></div>
                </div>
                <div>
                    <a href="#"><img src="../../public/img/2019071015627289945498197577.jpg" alt=""></a>
                </div>
                <ul>
                    <li><a href="#" title="夏季补水,让肌肤不在饥渴">夏季补水,让肌肤不在饥渴！</a></li>
                    <li><a href="#" title="一白遮百丑,哪些食物可以美白?">"一白遮百丑,哪些食物可以美白?"</a></li>
                    <li><a href="#" title="这些茶,减脂效果还是不错的">这些茶,减脂效果还是不错的</a></li>
                    <li><a href="#" title="初伏天养生,这几种方法要注意">初伏天养生,这几种方法要注意</a></li>
                    <li><a href="#" title="那些美颜食物的神级吃法">专题|那些美颜食物的神级吃法</a></li>
                    <li><a href="#" title="地址减肥餐,让你瘦到飞起来">专题|地址减肥餐,让你瘦到飞起来</a></li>
                </ul>
            </div>
            <div class="one_h_two">
                <div class="one_w">
                    <div>
                        <span><a href="#">烘焙</a></span>
                        <span><a href="#">食谱</a></span>
                    </div>
                    <div><router-link to="/Second">烘焙专区</router-link></div>
                </div>
                <div>
                    <a href="#"><img src="../../public/img/you.jpg" alt=""></a>
                </div>
                <ul>
                    <li><a href="#" title="这些挑水果小技巧,你知道吗?">这些挑水果小技巧,你知道吗?</a></li>
                    <li><a href="#" title="网红肉松小贝,在家就能做!">网红肉松小贝,在家就能做!</a></li>
                    <li><a href="#" title="内藏惊喜的彩虹戚风蛋糕">内藏惊喜的彩虹戚风蛋糕</a></li>
                    <li><a href="#" title="消耗蛋挞皮-简单版红薯酥">消耗蛋挞皮-简单版红薯酥</a></li>
                    <li><a href="#" title="奥利奥的N种百搭吃法">菜单|奥利奥的N种百搭吃法</a></li>
                    <li><a href="#" title="另类咸香口儿   满足你的味蕾!">专题|另类咸香口儿   满足你的味蕾!</a></li>
                </ul>
            </div>
            <div class="one_h_three">
                <div class="one_w">
                    <div>
                        <span><a href="#">为你推荐</a></span>
                    </div>
                    <div><a href="#">我的收藏</a></div>
                </div>
                <div>
                    <a href="#"><img src="../../public/img/2019070515623168464608197577.jpg" alt=""></a>
                </div>
                <ul>
                    <li><a href="#" title="孩子提高免疫力,健康过春季">孩子提高免疫力,健康过春季</a></li>
                    <li><a href="#" title="食物降血脂这些更有效">划重点!食物降血脂这些更有效</a></li>
                    <li><a href="#" title="粗粮细作:健康能量燕麦甜品">粗粮细作:健康能量燕麦甜品</a></li>
                    <li><a href="#" title="童趣童味,儿童创意点餐">妈妈派|童趣童味,儿童创意点餐</a></li>
                    <li><a href="#" title="ACA 手持电动打蛋器">免费抽奖|ACA 手持电动打蛋器</a></li>
                    <li><a href="#" title="ACA TM33HT家用烤箱">免费抽奖|ACA TM33HT家用烤箱</a></li>
                </ul>
            </div>
        </div>
        <div class="two_h">
            <div class="two_h_one">
                <a href="#">新秀菜谱</a>
                <a href="#">一周热门</a>
                <a href="#">最受欢迎的家常菜</a>
            </div>
            <div class="two_h_two">
                <a href="#">热菜</a>
                <a href="#">凉菜</a>
                <a href="#">汤羹</a>
                <a href="#">主食</a>
                <a href="#">小吃</a>
                <a href="#">西餐</a>
                <a href="#">菜谱首页</a>
            </div>
        </div>
        <div class="three_h">
            <div class="three_h_w">
                <a href="#"><img src="../assets/x13.jpg" alt=""/></a>
                <div><a href="#">五花肉炒芸豆</a></div>
                <div><a href="#">逝去的爱情</a></div>
            </div>
            <div class="three_h_w">
                <a href="#"><img src="../assets/x14.jpg" alt=""/></a>
                <div><a href="#">香酥五花肉</a></div>
                <div><a href="#">个性胜过姿色</a></div>
            </div>
            <div class="three_h_w">
                <a href="#"><img src="../assets/x15.jpg" alt=""/></a>
                <div><a href="#">呆萌兔子面包</a></div>
                <div><a href="#">一溪月</a></div>
            </div>
            <div class="three_h_w">
                <a href="#"><img src="../assets/x16.jpg" alt=""/></a>
                <div><a href="#">花蛤粉丝煲</a></div>
                <div><a href="#">花鱼儿</a></div>
            </div>
        </div>
        <div class="three_h">
            <div class="three_h_w">
                <a href="#"><img src="../assets/x17.jpg" alt=""/></a>
                <div><a href="#">麻辣小龙虾</a></div>
                <div><a href="#">逝去的爱情</a></div>
            </div>
            <div class="three_h_w">
                <a href="#"><img src="../assets/x18.jpg" alt=""/></a>
                <div><a href="#">红烧肉</a></div>
                <div><a href="#">个性胜过姿色</a></div>
            </div>
            <div class="three_h_w">
                <a href="#"><img src="../assets/x19.jpg" alt=""/></a>
                <div><a href="#">鱼香肉丝</a></div>
                <div><a href="#">一溪月</a></div>
            </div>
            <div class="three_h_w">
                <a href="#"><img src="../assets/x20.jpg" alt=""/></a>
                <div><a href="#">水煮肉片</a></div>
                <div><a href="#">花鱼儿</a></div>
            </div>
        </div>
        <div class="three_h">
            <div class="three_h_w">
                <a href="#"><img src="../assets/x01.jpg" alt=""/></a>
                <div><a href="#">口水鸡</a></div>
                <div><a href="#">花鱼儿</a></div>
            </div>
            <div class="three_h_w">
                <a href="#"><img src="../assets/x02.jpg" alt=""/></a>
                <div><a href="#">蛋炒饭</a></div>
                <div><a href="#">烟雨心灵</a></div>
            </div>
            <div class="three_h_w">
                <a href="#"><img src="../assets/x03.jpg" alt=""/></a>
                <div><a href="#">宫保鸡丁</a></div>
                <div><a href="#">诗韵墨香</a></div>
            </div>
            <div class="three_h_w">
                <a href="#"><img src="../assets/x05.jpg" alt=""/></a>
                <div><a href="#">排骨</a></div>
                <div><a href="#">逝去的爱情</a></div>
            </div>
        </div>
        <div class="three_h">
            <div class="three_h_w">
                <a href="#"><img src="../assets/x04.jpg" alt=""/></a>
                <div><a href="#">沙拉</a></div>
                <div><a href="#">一溪月</a></div>
            </div>
            <div class="three_h_w">
                <a href="#"><img src="../assets/x06.jpg" alt=""/></a>
                <div><a href="#">麻辣豆腐</a></div>
                <div><a href="#">个性胜过姿色</a></div>
            </div>
            <div class="three_h_w">
                <a href="#"><img src="../assets/part10.jpg" alt=""/></a>
                <div><a href="#">鸡蛋羹</a></div>
                <div><a href="#">一溪月</a></div>
            </div>
            <div class="three_h_w">
                <a href="#"><img src="../assets/x07.jpg" alt=""/></a>
                <div><a href="#">酸菜鱼</a></div>
                <div><a href="#">花鱼儿</a></div>
            </div>
        </div>
        <div class="three_h">
            <div class="three_h_w">
                <a href="#"><img src="../assets/part04.jpg" alt=""/></a>
                <div><a href="#">酥排</a></div>
                <div><a href="#">月亮私家烘培</a></div>
            </div>
            <div class="three_h_w">
                <a href="#"><img src="../assets/part11.jpg" alt=""/></a>
                <div><a href="#">鸡蛋灌饼</a></div>
                <div><a href="#">柔蓝水晶</a></div>
            </div>
            <div class="three_h_w">
                <a href="#"><img src="../assets/part02.jpg" alt=""/></a>
                <div><a href="#">美味小虾虾</a></div>
                <div><a href="#">柔蓝水晶</a></div>
            </div>
            <div class="three_h_w">
                <a href="#"><img src="../assets/part03.jpg" alt=""/></a>
                <div><a href="#">自制鸡米花</a></div>
                <div><a href="#">花鱼儿</a></div>
            </div>
        </div>
        <lun></lun>
        <three></three>
        <div class="part01">
            <div class="zuo">
                <p><a href="">美食天下 - 让吃更美好！</a></p>
                <ul>
                    <li>关于我们 · </li>
                    <li> 联系我们 · </li>
                    <li> 加入我们 · </li>
                    <li> 服务声明 · </li>
                    <li> 友情链接 · </li>
                    <li> 网站地图 · </li>
                    <li> 移动应用</li>
                </ul>
            </div>
            <div class="you">
                <div style="text-align:center">
                    <img src="../assets/xxxx.png" alt="">
                    <p>手机客户端</p>
                </div>
                <div style="text-align:center">
                    <img src="../assets/xxx.png" alt="">
                    <p>微信公众号</p>
                </div>
            </div>
        </div>
        <div class="part02">
            <span>友情链接：</span>
                <ul>
                    <li><a href="">愉悦妈妈</a></li>
                    <li><a href="">自游乐</a></li>
                    <li><a href="">爱奇艺生活</a></li>
                    <li><a href="">中华美食网</a></li>
                    <li><a href="">太平洋亲子网</a></li>
                    <li><a href="">美食杰</a></li>
                    <li><a href="">红餐网</a></li>
                    <li><a href="">食品商务网</a></li>
                    <li><a href="">妈妈网</a></li>
                    <li><a href="">亲宝网</a></li>
                    <li><a href="">6296网址大全</a></li>
                    <li><a href="">中国地图</a></li>
                    <li><a href="">三九养生堂</a></li>
                    <li><a href="">饭菜网</a></li>
                    <li><a href="">波奇网</a></li>
                    <li><a href="">糖豆网</a></li>
                    <li><a href="">慧聪网</a></li>
                    <li><a href="">企业服务平台</a></li>
                    <li><a href="">什么值得买</a></li>
                </ul>
        </div>
        <div class="part03">
            <p>版权所有 © 2004-2019 美食天下 保留所有权利 -  京公网安备 11010502031041号 / 京ICP证090244号 / 京ICP备10020153号</p>
        </div>
    </div>
</div>
    
</template>
<script>
import Header from "./Header.vue"
import carousel from "./Carousel/Carousel.vue"
import lun from "./Carousel/Lun.vue"
import three from "./Carousel/Three.vue"

export default {
    data(){
        return{
            foods:"",
            
            
        }
    },
    methods: {
        login(){
            location.href="http://wwww.baidu.com"
        }
    },
    components:{
        carousel,
        lun,
        "aheader":Header,
        three,
        
    }
    
}
</script>
<style scoped>
    /*父级元素*/
    .main{
        width:70%;
        margin:25px auto;
    } 
    .container{
        width:100%;
        display:flex;
        align-items:center;
        justify-content:space-between;
        margin-bottom:12px;
    }
    .container>.left{display:flex;align-items:center;}
    .container>.left ul{margin-left:-60px;}
    .container>.left>a img{width:40%;height:40%;}
    /*ui*/ 
    .first-ui{
        display:flex;
        list-style:none;
        margin-right:30px;
    }
    /*首页*/ 
    .first-ui li:first-child a{
        color:red !important;
    }
    /*li*/ 
    .first-ui li a{
        margin-right: 16px;
        font-size:20px;
        color:black;
    }
    .first-ui li a:hover{color:red}
    .right{display:flex;width:25%;margin-top:10px}
    .right .btn span{font-size:14px;line-height:30px;color:#fff;}
    .btn:hover{background:red;}
    .right_left{width:100%;height:30px!important;background-color:none!important;border-right:none;border-radius:3px 0 0 3px;}
    .btn{width:50%;height:30px;text-align:center;vertical-align:middle;background:#999;border-radius:0 3px 3px 0;}
    .btn img{width:45%;height:70%;margin-left:-10px;padding-top:8px;}
    
    .one_h{display:flex;justify-content:space-between;margin-top:20px; margin-bottom:1.5rem}
    .one_h_one,.one_h_two,.one_h_three{display:flex;flex-direction:column;width:31%;}
    .one_w{display:flex;justify-content:space-between;border-bottom:2px solid #ddd;padding-bottom:8px;}
    .one_w span+span{margin-left:20px;}
    .one_w div:last-child a:hover{color:red}
    .one_h img{width:100%;margin-top:12px;}
    .one_h ul{list-style:none;padding-left:20px;margin-top:8px;}
    .one_h ul li a::before{width:5px;height:5px;border-radius:50%;border:2px solid #ccc;display:inline-block;content:"";float:left;vertical-align:middle;margin:5px 8px -2px -10px;}
    .one_h ul li a:hover{color:red}
    .one_h a{color:#333;font-size:16px!important;}
    .one_h span a{font-size:20px!important;}
    .one_h span:first-child a{color:red;border-bottom:3px solid red;padding-bottom:11px;}
    .one_h ul li+li{padding-top:14px}
    .two_h{display:flex;justify-content:space-between;align-items: center;border-bottom:2px solid #ccc;padding-bottom:8px;}
    .two_h a{margin-left:20px;font-size:20px;color:black}
    .two_h .two_h_one a:first-child{color:red;margin-left:0}
    .two_h_two a{font-size:16px}
    .two_h_two a:hover{color:red}
    .three_h{display:flex;justify-content:space-between;margin-top:15px;}
    .three_h_w{width:23%;text-align:center;overflow:hidden}
    .three_h_w img{width:100%;height:80%;padding-bottom:5px;}
    .three_h_w a:hover img{transform:scale3d(1.1, 1.1, 1);transition:all .8s}
    .three_h_w a{color:black;font-size:18px;}
    .three_h_w a:hover{color:red}
    .three_h_w div:last-child a{font-size:12px}
    .zuo{width:88%;margin-top:25px}
    .zuo ul{list-style:none;display:flex;margin-top:15px}
    .part01{display:flex;justify-content:space-between;margin-top:40px;border-top:1px solid #ddd;padding-top:15px;width:100%;}
    .you img{width:50%;height:80%;}
    .you div{margin-left:-44px;}
    .you{display:flex;flex-direction:row-reverse;width:30%}
    p a{color:#f50;font-size:14px;font-weight:700;}
    p a:hover{text-decoration:underline}
    ul li a{color:#666;font-size:12px;}
    .part02{width:100%;display:flex;flex-wrap:wrap;margin-top:18px;}
    .part02 ul{list-style:none;display:flex;flex-wrap:wrap}
    .part02 ul li+li{margin-left:15px}
    .part02 ul li a{color:#666}
   .part02 span{font-weight:bold;color:#000}
   .part03{width:80%;margin:0 auto;text-align:center;margin-top:50px}
</style>