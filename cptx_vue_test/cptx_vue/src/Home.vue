<template>
    <div>
        <Header2 style="margin-bottom:2rem"></Header2>
        <el-tabs :tab-position="tabPosition" style="height: 100%;">
            <el-tab-pane label="会员中心"><members></members></el-tab-pane>
            <el-tab-pane label="菜谱"><menus></menus></el-tab-pane>
            <el-tab-pane label="日志"><daily></daily></el-tab-pane>
            <el-tab-pane label="收藏"><collect></collect></el-tab-pane>
            <el-tab-pane label="账户设置"><personal></personal></el-tab-pane>
        </el-tabs>

        <!--
        <el-container>
            <el-aside class="el_aside">
                <left></left>
            </el-aside>
            <el-main>
                <el-avatar icon="el-icon-user-solid"></el-avatar>
            </el-main>
        </el-container>
        -->
    </div>
</template>
<script>
import Members from './views/Members.vue'
import Menu from './views/Menu.vue'
import Daily from './views/Daily.vue'
import Collect from './views/Collect.vue'
import Personal from './views/Personal.vue'
import Header2 from "./components/Header2.vue"
export default {
    data(){
        return {
            tabPosition: 'left'
        }
    },
    components:{
        "members":Members,
        "menus":Menu,
        "daily":Daily,
        "collect":Collect,
        "personal":Personal,
        Header2,
    },
}
</script>
<style>
html{
    height:1000px;
}
 .el-tabs__item.is-active{
     color:red !important;
 }
.el-tabs__item:hover{
    color:red !important;
}
.el-tabs__active-bar{
    background-color:red !important;
}
.el-tabs__nav{
    
}
.el-tabs__item{
    font-size:19px !important;
}
.el-tabs__nav-scroll{
}
</style>