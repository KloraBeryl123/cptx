<template>
<div>
    <div class="five">
        <div>
            <a href="">时令食材</a>
        </div>
        <ul class="five_one">
            <li><a href="">肉禽类</a></li>
            <li><a href="">水产品</a></li>
            <li><a href="">蔬菜</a></li>
            <li><a href="">米面豆乳</a></li>
            <li><a href="">食材首页</a></li>
        </ul>
    </div>
    <div class="three_h">
            <div class="three_h_w">
                <a href="#"><img src="../../assets/s01.jpg" alt=""/></a>
                <div><a href="#">西红柿</a></div>
                <div><a href="#">美白防晒首选</a></div>
            </div>
            <div class="three_h_w">
                <a href="#"><img src="../../assets/s02.jpg" alt=""/></a>
                <div><a href="#">黄瓜</a></div>
                <div><a href="#">厨房里的美容师</a></div>
            </div>
            <div class="three_h_w">
                <a href="#"><img src="../../assets/s03.jpg" alt=""/></a>
                <div><a href="#">苦瓜</a></div>
                <div><a href="#">苦尽甘来</a></div>
            </div>
            <div class="three_h_w">
                <a href="#"><img src="../../assets/s04.jpg" alt=""/></a>
                <div><a href="#">西瓜</a></div>
                <div><a href="#">群众宠儿</a></div>
            </div>
            <div class="three_h_w">
                <a href="#"><img src="../../assets/s05.png" alt=""/></a>
                <div><a href="#">茄子</a></div>
                <div><a href="#">微笑的代名词</a></div>
            </div>
            <div class="three_h_w">
                <a href="#"><img src="../../assets/s06.jpg" alt=""/></a>
                <div><a href="#">西蓝花</a></div>
                <div><a href="#">蔬菜皇冠</a></div>
            </div>
            <div class="three_h_w">
                <a href="#"><img src="../../assets/s07.jpg" alt=""/></a>
                <div><a href="#">毛豆</a></div>
                <div><a href="#">夏日圣斗士</a></div>
            </div>
    </div>
    <div class="three_h three_w">
            <div class="three_h_w">
                <a href="#"><img src="../../assets/ss1.jpg" alt=""/></a>
                <div><a href="#">小龙虾</a></div>
                <div><a href="#">万里网红</a></div>
            </div>
            <div class="three_h_w">
                <a href="#"><img src="../../assets/ss2.jpg" alt=""/></a>
                <div><a href="#">猪里脊</a></div>
                <div><a href="#">超嫩小鲜肉</a></div>
            </div>
            <div class="three_h_w">
                <a href="#"><img src="../../assets/ss3.jpg" alt=""/></a>
                <div><a href="#">皮皮虾</a></div>
                <div><a href="#">天生美味难自弃</a></div>
            </div>
            <div class="three_h_w">
                <a href="#"><img src="../../assets/ss4.jpg" alt=""/></a>
                <div><a href="#">生蚝</a></div>
                <div><a href="#">海中牛肉</a></div>
            </div>
            <div class="three_h_w">
                <a href="#"><img src="../../assets/ss5.jpg" alt=""/></a>
                <div><a href="#">鲈鱼</a></div>
                <div><a href="#">但爱鲈鱼美</a></div>
            </div>
            <div class="three_h_w">
                <a href="#"><img src="../../assets/ss6.jpg" alt=""/></a>
                <div><a href="#">鸡翅</a></div>
                <div><a href="#">老少通吃</a></div>
            </div>
            <div class="three_h_w">
                <a href="#"><img src="../../assets/ss7.jpg" alt=""/></a>
                <div><a href="#">排骨</a></div>
                <div><a href="#">可记得吮指之乐</a></div>
            </div>
    </div>
    
</div>
</template>
<script>
export default {
    data(){
        return{}
    }
}
</script>
<style scoped>
    .five{display:flex;justify-content:space-between;margin-top:30px;border-bottom:1px solid #ddd;align-items:center;padding-bottom:3px;margin-bottom:15px}
    .five_one{display:flex;list-style:none;}
    .five_one li{margin-left:50px;}
    .five_one li a{font-size:16px;color:#333;}
    .five div:first-child a{font-size:20px;color:#ff6767;font-weight:400;border-bottom:2px solid red;padding-bottom:6px}
    .three_h{display:flex;justify-content:space-around;width:100%;align-items:center;margin-bottom:10px}
    .three_h_w{display:flex;flex-direction:column;text-align:center;}
    .three_h_w img{width:100%;height:100%}
    .three_w .three_h_w{width:13%}
    .three_h_w div a{font-size:16px;color:#333}
    .three_h_w div a:hover{color:red!important;text-decoration:underline}
    .three_h_w div:last-child a{font-size:12px;color:#999}
    .three_h_w div:last-child a:hover{color:#999!important}
</style>