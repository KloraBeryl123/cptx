<template>
    <div class="collect" >
        <el-tabs v-model="activeName" type="card" @tab-click="handleClick">
                <el-tab-pane label="我收藏的菜谱" name="first">
                    <p class="eg">{{this.point}}</p>
                    <div id="mycollect">
                        <div class="col" v-for="(item,i) of list" :key="i">
                            <div class="left_info">
                                <div class="col_img">
                                <img :src="'http://127.0.0.1:3000/'+item.img_url" alt="">
                                </div>
                                <div class="col_det">
                                    <p class="title">{{item.title}}</p>
                                    <p class="main">{{item.material}}</p>
                                    <p class="main">作者：{{item.arthor}}</p>
                                </div>
                            </div>
                            <div class="all_btn">
                                <el-button type="danger" @click="delnode(i)">取消收藏</el-button>
                                <el-button type="danger" @click="Toindex3">查看详情</el-button>
                            </div> 
                        </div>
                    </div>
                </el-tab-pane>
                <el-tab-pane label="话题" name="second"><p class="eg">您还没有收藏任何话题!</p></el-tab-pane>
                <el-tab-pane label="日志" name="third"><p class="eg">您还没有收藏任何日志!</p></el-tab-pane>
                <el-tab-pane label="菜单" name="four"><p class="eg">您还没有收藏任何菜单!</p></el-tab-pane>
                <el-tab-pane label="专题" name="five"><p class="eg">您还没有收藏任何专题!</p></el-tab-pane>
        </el-tabs>
        
        
    </div>
</template>
<script>
export default {
    data(){
        return{
            activeName: 'first',
            list:[],
            mycollect:'',
            point:'',
        }
    },
    methods: {
      handleClick(tab, event) {
        console.log(tab, event);
      },
      delnode(i){
        this.$confirm("确定取消收藏吗？").then(action=>{
            var cid=sessionStorage.getItem("id");
            var obj={"cid":cid}
            var url="delcol";
            this.axios.get(url,{params:obj}).then(result=>{
                if(result.data.code>0){
                    this.list.splice(this.list[i],1);
                    this.point="您还没有收藏任何菜谱"
                }
            })
        }).catch(err=>{
            return;
        })
      },
      Toindex3(){
          this.$router.push("/index3");
      }
    },
    mounted() {
        onload:{
            this.mycollect=document.getElementById("mycollect");
            var url="coll";
            this.axios.get(url).then(result=>{
                if(result.data.code>0){
                    this.list=result.data.data;
                    this.point="";
                }else{
                    this.point=result.data.data;
                    this.mycollect.style.display="none";
                }
            })
      }
    },
}
</script>
<style>
body{
   overflow: auto !important;
}
.collect{
    padding-top:25px;
}
.col_img>img{
    width:300px;
    height:200px;
    margin:0 20px 20px 0;
}
.col{
    display:flex;
    justify-content:space-between;
    border-bottom:1px solid #ccc;
}
.left_info{
    margin-top:50px;
    display:flex;
}
.all_btn .el-button{
    width:100% !important;
    margin-bottom:20px;
}
.all_btn .el-button+.el-button{
    margin:0;
}
.all_btn{
    width:90px !important;
    margin-top:50px;
     margin-right:10px;
}
.col_det p:nth-child(3){
    font-size:15px;
    color:#b5b2b2;
}
</style>