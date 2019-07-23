<template>
<div>
    <div class="qq_nav">
        <div>
            <img src="../assets/qqqe.png" alt="">
            <span style="font-size:23px;position:absolute;top:0.5rem;display:inline-block;color:white;margin-left:0.5rem">QQ登录</span>
        </div>
        <div>
            <a>QQ登录</a><span> | </span>
            <a>授权管理</a><span> | </span>
            <a>申请接入</a>
        </div>
        <div style="display: none">
            <Dropdown placement="bottom-end">
                <a href="javascript:void(0)">
                    选项
                    <Icon type="ios-arrow-down"></Icon>
                </a>
                <DropdownMenu slot="list" >
                    <DropdownItem>qq登陆</DropdownItem>
                    <DropdownItem>授权管理</DropdownItem>
                    <DropdownItem>申请接入</DropdownItem>
                </DropdownMenu>
            </Dropdown>
        </div>
    </div>
    <div class="boxall">
        <div class="box1">
            <p>快速安全登录</p>
            <p style="font-size:1rem;margin-top:1rem;margin-bottom:2rem"> 请使用<a>QQ手机版</a>扫描二维码，<br>
            或点击头像授权登录。</p>
            <img src="../assets/qqewm.png" alt="" >
           <span @click="togle">
                <img :src=" this.i == 0 ? src : ssrc" >
                <!-- <span>{{}}</span> -->
            </span>
            <!-- <div style="margin-left:5.5rem">Flora</div> -->
            <div style="font-size:12px;margin-top:3.5rem">
                <router-link to="./Reg"><a>账号密码登录</a></router-link><span> | </span>
                <router-link to="./Reg"><a>注册新账号</a></router-link><span> | </span>
                <a>意见反馈</a>
            </div>
        </div>
        <div class="box2">
            <p style="margin-top:0.8rem;margin-bottom:0.8rem">该网站已有超过10万用户使用QQ登录</p>
            <div style="margin-bottom:1rem;padding: 0.8rem 0  0.8rem 0">
                <a>菜谱天下 </a>将获得以下权限:
            </div>
            <input type="checkbox"   @click="checkAll" v-model="checked" style="margin-bottom:0.8rem;margin-top:-1rem"> 全选
            <div style="margin-bottom:1rem;padding: 0.8rem 0  0.8rem 0;border-bottom:0">
                <ul>
　　                <li v-for="(item,index) in list" :key="index" style="margin-top:20px;">
　　　　                <input type="checkbox" v-model="checkModel" :value="item.id">
　　　　                <span>{{item.name}}</span>
　　                </li>
                </ul>
            </div>
            
            <p>授权后表明你已同意 <a href="javascript:;">QQ登录服务协议</a></p>
        </div>
    </div>
    

</div>
    
</template>
<script>
    export default {
        data () {
            return {
                theme1: 'light',
                i:0,
                src:require('../assets/avatar/a_1.jpg'),
                ssrc:require('../assets/avatar/a_2.jpg'),
                list:[
　　　　　　        {id:1,name:" 获得您的昵称"},
　　　　　　        {id:2,name:" 获得您的头像"},
　　　　　　        {id:3,name:" 获得您的性别"}
　　　　            ],
//                 uphones:[
//                    {id:1,uphone:"15611112222"},
// 　　　　　　        {id:2,uphone:"15633334444"},
//                 ],
　　　　         checked:false, //是否全选
　　　　         checkModel:[] //双向数据绑定的数组，我是用的id
            }
        },
        methods:{
            togle(){
                if(this.i==0){
                    this.i=1;

                }else if(this.i==1){
                    this.i=0;
                }
            },
            checkAll(){
　　　　        if(this.checked){
　　　　　　        this.checkModel=[];
　　　　        }else{
　　　　　　        this.list.forEach((item)=>{
　　　　　　            if(this.checkModel.indexOf(item.id)==-1){
　　　　　　　　            this.checkModel.push(item.id)
　　　　　　            }
　　　　　　        })
　　　　        }
　　        },



        },
        watch:{
　　        checkModel(){
　　　　        if(this.checkModel.length==this.list.length){
　　　　　　        this.checked=true;
　　　　        }else{
　　　　　　        this.checked=false;
　　　　        }
　　        }
        },
}
</script>
<style >
.box2{
    margin-left: 1.8rem;
    position:absolute;
    text-align: left;
}
.box2 li{
    list-style: none;
}
.box2 ul{
    margin-top:-1rem ;
}
.box2>div{
    border-top:1px dotted #E2E2E2;
    border-bottom: 1px dotted #E2E2E2;
}

.boxall{
    text-align: center;
    margin-top: 2rem;
    font-size: 12px;
    margin-left:-18rem;
}
.boxall>div{
    display: inline-block;
}
.boxall>div:first-child{
    width:403px;
    height: 325px;
}
.box1{
    border-right:1px dotted #E2E2E2;
}
.box1 img{
    width:84px;
    height:84px;
    border:1px solid #D1D1D1;
    margin:4px;
}
.box1>p:first-child{
    font-size: 20px;
    color: #333;
}
.box1>div a,.box1>div>span{
    color:#666666;
}
.qq_nav{
    text-align: left;
    padding-left: 22rem;
    color: black;
    background-color: #51B7EC;
    height: 48px;
}
.qq_nav>div{
    display: inline-block;
}
.qq_nav>div:first-child{
    margin-right: 25rem;
}
.qq_nav>div:nth-child(2){
    position: absolute;
    top:1rem;
}
.qq_nav>div:nth-child(2) a,.qq_nav>div:nth-child(2) span{
    color:white;
}
@media all and (max-width: 991px) {
    .qq_nav{
        padding-left: 22rem
    }
    .qq_nav>div:first-child{
        margin-right: 10rem;
    }
}
@media all and (max-width: 768px) {
    .qq_nav{
        padding-left: 5rem
    }
    .qq_nav>div:first-child{
        margin-right: 10rem;
    }
    .box2{
        float:none;
    }
}
@media all and (max-width: 480px) {
    .qq_nav{
        padding-left: 2rem
    }
    .qq_nav>div:first-child{
        margin-right: 2rem;
    }
    .qq_nav>div:nth-child(2){
        display:none;
    }
    .qq_nav>div:nth-child(3){
        display:block;
        color:black;
    }
}

</style>
 