<template>
    <div class="menus">
        <el-tabs v-model="activeName" type="card" @tab-click="handleClick">
                <el-tab-pane label="我的菜谱" name="first">
                    <div class="caipu">
                        <!--<el-button type="danger">搜索</el-button>
                        <el-input class="search" v-model="title" placeholder="搜索我发布的菜谱"></el-input>-->
                        <el-button type="danger" @click="publish">发布菜谱</el-button>
                    </div>
                    <div>
                        <p id="point" class="eg">{{point}}</p>
                        <div class="details">
                            <div class="my_img"><img src=""></div>
                            <div id="my_menu" v-for="(item,i) of list" :key="i" >
                                <div class="small">
                                    <img :src="item.imgURL" class="myimg" alt="图片未加载成功"/>
                                    <div class="other">
                                        <p class="title">名称：{{item.food_name}}</p>
                                        <p class="main">用料：{{item.ingredient}}</p>
                                        <p class="main">步骤：{{item.steps}}</p>
                                    </div>
                                </div>
                                <el-button type="danger" :data-id="item.pid" @click="del(item.pid)">删除</el-button>
                            </div>
                        </div>
                    </div>
                    
                </el-tab-pane>
                <el-tab-pane label="待审核" name="second"><p class="eg">您没有处于待审核的菜谱！</p></el-tab-pane>
                <el-tab-pane label="退稿箱" name="third"><p class="eg">您没有审核未通过的菜谱！</p></el-tab-pane>
                <el-tab-pane label="草稿箱" name="fourth"><p class="eg">您没有未提交审核的菜谱！</p></el-tab-pane>
        </el-tabs>
        
    </div>
</template>
<script>
export default {
    data(){
        return{
            activeName: 'first',
            title:'',
            foodName:'',
            ingredient:'',
            point:'',
            details:'',
            imgURL:'',
            list:[],
        }
    },
    methods: {
      handleClick(tab, event) {
        // console.log(tab, event);
      },
      
      publish(){
          this.$router.push('/Publish');
      },
      del(pid){
          this.$confirm("是否要删除该条菜谱").then(action=>{
              var url="delete";
              var obj={pid:pid};
              this.axios.get(url,{params:obj}).then(result=>{
              window.location.reload();
            })
          }).catch(err=>{
              return;
          })
          
        },
    },
    mounted() {
        onload:{
            var foodName=sessionStorage.getItem("food_name");
            var ingredient=sessionStorage.getItem("ingredient");
            this.foodName=foodName;
            this.ingredient=ingredient;
            this.details=document.querySelector(".menus .details");
            var url="all";
            this.axios.get(url).then(result=>{
                if(result.data.code>0){
                    this.list=result.data.data;
                    this.point="";
                }else{
                    this.point=result.data.data;
                    this.details.style.display="none";
                }
            })
      }
    },
    created() {
              
    },
}
</script>
<style>
    .caipu{
        padding:20px;
        display:flex;
        flex-direction:row-reverse;
    }
    .caipu .el-button{
        margin-right:50px;
    }
    .menus{
        padding-top:25px;
    }
    .menus .el-input__inner{
        width:200px !important;
        height:26px !important;;
        
    }
    .search{
        text-align:left !important;
        margin-left:5px;
    }
    .my_img{
        float:left;
    }
    #my_menu{
        display:flex;
        flex-direction:column;
        margin-left:20px;
        margin-bottom:12px;
        text-align:left;
        border-bottom:1px solid #ccc;
    }
    .title{
        font-size:25px;
        text-align:left;
        margin-bottom:20px;
        margin-top:20px;
    }
    #point{
        display:block;
    }
    .details{
        display:block;
    }
    #my_menu .el-button{
        width:75px;
        margin-bottom:10px;
    }
    .myimg{
        width:300px;
        height:200px;
        margin:0px 20px 20px 0;
    }
    .small{
        display:flex;
        flex-direction:row;
    }
    .other{
        width:80%;
    }
    .main{
        line-height:1.5;
        font-size:18px;
        margin-bottom:5px;
    }
</style>