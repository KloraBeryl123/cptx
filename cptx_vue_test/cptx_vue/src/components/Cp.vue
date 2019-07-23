<template>
    <div>
        
            <div class="meishi">
                <div class="meishi_one">
                    <a href="#"><img src="../../public/img/logo.png" alt=""></a>  
                    <button class="but">菜谱</button>
                    <ul class="meishi-ul">
                        <li v-for="(elem,i) of list" :key="i"><a href="">{{elem}}</a></li>
                    </ul>  
                </div>      
                <div class="input">
                    <!-- <input @keyup.13="search"  v-model="keywords" type="text">          -->
                    <Input search placeholder="搜索" style="width:200px;float:right;margin-left:14px" focus/>
                </div>
            </div> 
            <div class="wrap">
                <ul class="ul2">
                    <div>
                        <li v-for="(elem,i) of list2" :key="i" ><a href="#" style="text-decoration:none">{{elem}}</a></li>
                    </div>  
                    <div style="padding-left:180px;position:relative" @mouseenter="enter()"><a href="#" style="text-decoration:none" >浏览全部菜单</a><img style="padding-left:3px" alt="">              
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
            </div>
            <div class="detail"> 
                <div class="zuo" >
                    <div class="zuo_a" v-for="(item,i) of list3" :key="i">
                            <a href=""><img :src="'http://127.0.0.1:3000/img/cp/'+item.img" alt=""></a>
                        <div>
                            <h6><a href="">{{item.title}}</a></h6>
                            <span><a href="">{{item.subtitle}}</a></span>
                            <p>{{item.detail}}</p>
                        </div>
                    </div>
                    <el-button size="large" type="primary" @click="loadMore">加载更多</el-button>
                </div>
                <div class="you">
                </div>
            </div>
    </div>
</template>
<script>
export default {
    data(){
        return{
            list:["菜谱首页","分类","菜单","排行","食材","食疗食补"],
            list2:["一周热门","当季最热","人气菜肴","明星菜谱","食神菜单"],
            num:-1,
            list3:[],
            pno:0,
            ps:6
        }
    },
    created() {
        this.loadMore();
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
            //当前页码加1
            this.pno++;
            //创建参数对象
            var obj={pno:this.pno,pageSize:this.ps}
            this.axios.get(url,{params:obj}).then(result=>{
                console.log(result.data);
                //数据覆盖
                //this.list=result.data.data;
                //数据追加
                var rows=this.list3.concat(result.data);
                this.list3=rows;
            })
        }
    },
}
</script>
<style scoped>
    .meishi{width:60%;margin:0 auto;display:flex;margin-top:15px;justify-content:space-between;margin-bottom:10px}
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
    .detail{width:60%;margin:0 auto;display:flex;}
    .detail .zuo{display:flex;flex-direction:column}
    .zuo_a{display:flex;}
    .zuo_a img{width:80%;height:80%}
</style>