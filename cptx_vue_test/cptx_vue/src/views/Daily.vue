<template>
    <div class="daily">
        <el-tabs v-model="activeName" type="card" @tab-click="handleClick">
                <el-tab-pane label="我的日志" name="first">
                    <div class="pub_daily"><el-button type="danger">发布日志</el-button></div>
                    <p class="point"><p class="eg">您还没有发布新日志噢，快去发布新日志吧!</p></p>
                </el-tab-pane>
                <el-tab-pane label="待审核" name="second"><p class="eg">您没有处于待审核的日志！</p></el-tab-pane>
                <el-tab-pane label="草稿箱" name="third"><p class="eg">您没有未提交审核的草稿箱！</p></el-tab-pane>
        </el-tabs>
        
        
    </div>
</template>
<script>
export default {
    data(){
        return{
            activeName: 'first'
        }
    },
    methods: {
      handleClick(tab, event) {
        console.log(tab, event);
      }
    }
}
</script>
<style>
.daily{
    padding-top:25px;
}
.pub_daily{
    display:flex;
    flex-direction:row-reverse;
}
</style>