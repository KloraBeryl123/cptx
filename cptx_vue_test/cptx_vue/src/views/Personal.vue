<template>
    <div class="persons">
        <div class="myname">
            <p class="set">昵称：</p>
            <el-input v-model="uname" placeholder="请输入新昵称"></el-input>
        </div>
        <div class="gender">
            <p class="set">性别：</p>
            <el-radio v-model="gender" label="1" border>男</el-radio>
            <el-radio v-model="gender" label="2" border>女</el-radio>
        </div>
        <div class="home">
            <p class="set">家乡：</p>
            <el-select v-model="value" placeholder="请选择省份">
                <el-option v-for="item in options" :key="item.value" :label="item.label" :value="item.value"></el-option>
            </el-select>
        </div>
        <div class="email">
            <p class="set">邮箱：</p>
            <el-input v-model="email" placeholder="请输入新邮箱"></el-input>
        </div>
        <div class="sign">
            <p class="set">个性签名：</p>
            <el-input type="textarea" :autosize="{ minRows: 10, maxRows: 50}" placeholder="请输入新个性签名" v-model="sign"></el-input>
        </div>
        <el-button type="danger" @click="update">保存修改</el-button>
    </div>
</template>
<script>
export default {
    data(){
        return{
            options: [{
             value: '北京市',
            label: '北京市'
            }, 
            {
            value: '天津市',
            label: '天津市'
            }, 
            {
             value: '河北省',
                label: '河北省'
            }, 
            {
            value: '山东省',
            label: '山东省'
            }, 
            {
            value: '上海市',
            label: '上海市'
            }],
            value: '',
            gender:"2",
            uname:'',
            email:'',
            sign:'',
            phone:''

        }
    },
    methods: {
        update(){
            var url="personal";
            var phone= sessionStorage.getItem("uphone");
            this.phone=phone;
            let fileFormData = new URLSearchParams();
            fileFormData.append('uname',this.uname);
            fileFormData.append('gender',this.gender);
            fileFormData.append('home',this.value);
            fileFormData.append('email',this.email);
            fileFormData.append('sign',this.sign);
            fileFormData.append('phone',this.phone);
            var requestconfig={
                header:{
                    'Content-Type': 'application/x-www-form-urlencoded'
                }
            }
            this.axios.post(url,fileFormData,requestconfig).then(result=>{
                if(result.data.code>0){
                    this.$alert("修改成功！");
                }
            })


        }
    },
}
</script>
<style>
.persons{
    margin:25px 0 0 20px;;
}

.set{
    font-size:17px;
    color:#888;
}
.myname .el-input__inner{
    width:205px !important;
    height:35px !important;
}
.home .el-select .el-input__inner{
    width:205px !important;
    height:35px !important;
}
.email .el-input__inner{
    width:300px !important;
    height:35px !important;
}
.sign .el-textarea__inner{
    width:700px !important;
}
.persons .el-button{
    margin-top:20px;
    margin-left:0%;
}
.persons .el-radio.is-bordered.is-checked{
    border-color:#F57272 !important;
}
.persons .el-radio__input.is-checked .el-radio__inner{
    border-color:#F57272 !important;
    background:#F57272 !important;
}
.persons .el-radio__input.is-checked+.el-radio__label{
    color:#F57272 !important;
}

</style>