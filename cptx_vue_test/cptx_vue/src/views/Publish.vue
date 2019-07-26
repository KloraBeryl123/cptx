<template>
    <div class="publish">
        <el-page-header class="goback" @back="goBack" content="发布菜谱">
        </el-page-header>
        <p class="left">菜谱名称 <span>*</span></p>
        <el-input v-model="food_name" placeholder="请输入菜谱名"></el-input>
        <p class="left">菜谱描述</p>
        <el-input type="textarea" :autosize="{ minRows: 5, maxRows: 10}" placeholder="请输入您对该菜谱的描述" v-model="detail"></el-input>
        <p class="left">成品图片</p>

        <el-upload class="avatar-uploader" action="http://127.0.0.1:3000/menuImg"  :show-file-list="true" :on-success="handleAvatarSuccess" :before-upload="beforeAvatarUpload">
            <img v-if="imageUrl" :src="imageUrl" class="avatar">
        <i v-else class="el-icon-plus avatar-uploader-icon"></i>
        </el-upload>
        
        <p class="left">食材用料 <span>*</span></p>
        <el-input  v-model="ingredient" placeholder="请输入食材用料，输入格式为××，××，××。"></el-input>
        <p class="left">做法步骤 <span>*</span></p>
        <el-input type="textarea" :autosize="{ minRows: 10, maxRows: 50}" placeholder="请输入步骤，格式为1、××。2、××。3、××。" v-model="steps"></el-input>
        <div class="mybtn">
          <el-button @click="sub" class="submit" type="danger" plain>提交菜谱</el-button>
        </div>
    </div>
</template>
<script>
export default {
    data(){
        return{
            food_name:'',
            imageUrl:'',
            detail:'',
            ingredient: '',
            steps:''
        }
    },
    methods: {
        //发布菜谱
        sub(){
            var food_name=this.food_name;
            var ingredient=this.ingredient;
            var steps=this.steps;
            var detail=this.detail;
            var imgURL=this.imageUrl;
        
            if(!food_name){
              this.$alert("菜谱名称不能为空");
              return;
            }
            if(!ingredient){
              this.$alert("食材用料不能为空");
              return;
            }
            if(!steps){
              this.$alert("做法步骤不能为空");
              return;
            }
            var url="menu";
            let fileFormData = new URLSearchParams();
            
            fileFormData.append('food_name', this.food_name);
            fileFormData.append('ingredient', this.ingredient);
            fileFormData.append('steps', this.steps);
            fileFormData.append('detail', this.detail);
             fileFormData.append('imgURL', this.imageUrl);
            // var obj={food_name:food_name,detail:detail,ingredient:ingredient,steps:steps};
            var  requestConfig = {
                headers: {
                'Content-Type': 'application/x-www-form-urlencoded'
                }
            }
            this.axios.post(url,fileFormData,requestConfig).then(result=>{
              if(result.data.code>0){
                this.$router.push("/Home");
              }
            })
            sessionStorage.setItem("food_name",food_name);
            sessionStorage.setItem("ingredient",ingredient);
        },
        goBack() {
        this.$router.push('/Home');
        },
        handleAvatarSuccess(res, file) {
        this.imageUrl = URL.createObjectURL(file.raw);
      },
    
        beforeAvatarUpload(file) {
          const isJPG = file.type === 'image/jpeg';
          const isLt2M = file.size / 1024 / 1024 < 2;

          if (!isJPG) {
            this.$message.error('上传头像图片只能是 JPG 格式!');
          }
          if (!isLt2M) {
            this.$message.error('上传头像图片大小不能超过 2MB!');
          }
          return isJPG && isLt2M;
      }
    },
    
}
</script>
<style>
.publish{
    width:70%;
    margin:0 auto;
}
.goback{
    margin-bottom:30px;
}
.left{
    text-align:left;
    color:#888;
    font-size:20px;
    margin:10px 0 10px 0;
}
.el-input__inner{
    width:100% !important;
    height:30px !important;
}

.avatar-uploader{
    text-align:left;
}
.avatar-uploader .el-upload {
    border: 1px dashed #d9d9d9;
    border-radius: 6px;
    cursor: pointer;
    position: relative;
    overflow: hidden;
  }
  .avatar-uploader-icon {
    font-size: 28px;
    color: #8c939d;
    width: 178px;
    height: 178px;
    line-height: 178px;
    text-align: center;
  }
  .avatar {
    width: 178px;
    height: 178px;
    display: block;
  }
  i.el-icon-plus.avatar-uploader-icon{
      line-height:178px !important;
  }

.submit{
    margin:20px !important;
}
.left span{
  color:#F57272;
}
.mybtn{
  text-align:center;
}
.mybtn .el-button{
  font-size:20px;
  
}
.el-page-header__content{
  font-size:20px !important;
}
</style>