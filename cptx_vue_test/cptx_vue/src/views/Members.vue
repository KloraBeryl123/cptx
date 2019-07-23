<template>
    <div class="member">
        <div class="my_info">
            <div class="info_img">
                <div class="img"><el-avatar src="https://cube.elemecdn.com/0/88/03b0d39583f48206768a7534e55bcpng.png"></el-avatar></div>
            </div>
            <div class="info_det">
            <div class="uname" style="margin-top:1.5rem"><p>{{uphone}}</p></div>
                <div class="others">
                    <div class="others-item">
                        <p>0</p>
                        <p>成长值</p>
                    </div>
                    <div class="others-item">
                        <p>5</p>
                        <p>幸运草</p>
                    </div>
                    <div class="others-item">
                        <p>0</p>
                        <p>米粒</p>
                    </div>
                    <div class="others-item">
                        <p>0</p>
                        <p>关注</p>
                    </div>
                    <div class="others-item">
                        <p>11</p>
                        <p>粉丝</p>
                    </div>
                    <div class="others-item">
                        <p>20</p>
                        <p>来访</p>
                    </div>
                </div>
            </div>
        </div>
        <div>
            <el-tabs v-model="activeName" type="card" @tab-click="handleClick">
                <el-tab-pane label="我关注的动态" name="first"><p class="eg">暂时没有动态！</p></el-tab-pane>
                <el-tab-pane label="所有动态" name="second"><p class="eg">暂时没有动态！</p></el-tab-pane>
                <el-tab-pane label="我的动态" name="third"><p class="eg">您还没有动态！</p></el-tab-pane>
            </el-tabs>
        </div>
    </div>
</template>
<script>
export default {
    data(){
        return{
            activeName: 'first',
            uphone:"",
        }
    },
    methods: {
      handleClick(tab, event) {
        console.log(tab, event);
      }
    },
    beforeMount() {
            var uphone= sessionStorage.getItem("uphone");
            if(uphone!==null){
                this.uphone=uphone;
            }else{
                var ran =Math.floor(Math.random()*999999999)
                this.uphone=`用户${ran}`;
            }
          
     },
}
</script>
<style>
.el-avatar{
    width:180px !important;
    height:180px !important;
}
.el-avatar--icon{
    font-size:70px !important;
}
.uname{
    margin:5px 0 0 20px; 
}
.uname>p{
    font-size:30px;
    margin:20px 0;
}
.others{
    display:flex !important;
}
.others-item{
    margin-right:40px;
    text-align:center;
    font-size:17px;
}
.info_det{
    padding:10px;
}
.my_info{
    display:flex;
    padding-bottom:35px;
    margin-left:40px;
}
.member{
    margin:10 0 0 40px !important;
    padding-top:20px;
}
.eg{
    font-size:20px;
    margin:70px 30%;
}
</style>