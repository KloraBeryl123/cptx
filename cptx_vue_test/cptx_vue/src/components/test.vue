<template>
    <div>
        <div class="head2">
            <div class="gbhdcon">
                <div class="gbsecdivaa">
                    <div class="gbsearch">
                        <form id="form1" name="form1" method="get" action="" target="_blank" >
                            <input type="text" placeholder="搜索什么项目？" v-model="search" class="inp_text" name="keyword" id="input_text">
                            <input type="hidden" name="sid" value="" >
                            <input type="submit" value="搜索" class="inp_sub" id="sub" @click="searchF()">
                        </form>
                    </div>
                    <p class="gbssp"> 热门搜索：
                        <a title="菜立方芽苗菜" href="#" target="_blank">芽苗菜</a>
                        <a title="五谷联盟煎饼果子" href="#" target="_blank">五谷煎饼</a>
                        <a title="疯迷便当" href="#" target="_blank">精品便当</a>
                        <a title="摊小二煎饼果子" href="#"  target="_blank">煎饼煎饼</a>
                        <a title="辛麻到瓦香鸡" href="#" target="_blank">瓦香鸡</a>    
                    </p>
                </div>
            </div>
        </div>
    </div>

</template>
<script>
export default {
    data(){
        return{
            search:"",
        }
    },
    methods:{
        searchF(){
            //console.log(this.search);
            // this.axios.get(url,
            //   {params:obj}).then(result=>{
            //     if(result.data.code<0){
            //       this.$Message.warning(result.data.msg);
            //     }else{
            //       this.$router.push("/Home")
            //       this.$Message.success(result.data.msg);
            //     }
            var reg=/^[辣椒土豆鸡蛋]$]/;
            if(!reg.test(this.search)){
                console.log("有辣椒土豆鸡蛋");
            }
        }
    },
     created(){
        window.onload = function (){
            
        }
    }

}
</script>

<style scoped>
.head2 { background: #ffe7dc; padding-top: 25px; height: 165px; }
.gbsecdiv { float: left; width: 600px; margin: 20px 0 0 120px; }
.gbsearch { width: 600px; height: 40px; line-height: 40px; background: #fff; border-radius: 20px; }
.gbssp { font-size: 12px; color: #ff6600; width: 570px; line-height: 32px; padding: 0px 15px; white-space: nowrap; text-overflow: ellipsis; overflow: hidden; }
.gbsearch input { float: left; background: none; border: none; outline: none; }
.gbsearch .inp_text { height: 40px; width: 500px; padding-left: 44px; line-height: 40px; font-size: 14px; border-radius: 3rem }
.gbsearch .inp_sub { float: right; width: 36px; height: 40px; line-height: 40px; background: #fff; font-size: 16px; color: #FF6600; cursor: pointer; margin-right: 16px; }
.gbhykh { margin-top: 20px; }
.gbssp a { font-size: 12px; color: #ff6600; margin-left: 10px; }
.gbsecdivaa { margin-left: 20px !important; width: 535px; }
.gbsearch { width: 535px; }
.gbsearch .inp_text { width: 425px; }

</style>
