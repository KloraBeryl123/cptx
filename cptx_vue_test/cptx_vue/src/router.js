/* 整个网站的路由器和路由字典，保存所有路径和组建的对应关系 */
import Vue from 'vue'
import Router from 'vue-router'
import Regtab from './components/Regtab.vue'
import Reg from './components/Reg.vue'
import Reupwd from './components/Reupwd.vue'
import SIdentify from './components/SIdentify.vue'
import Header from './components/Header.vue'
import Index from './components/Index.vue'
import Qq from './components/Qq.vue'
import test from './components/test.vue'
import Bdmap from './components/Bdmap.vue'
import Footer from './components/Footer.vue'
/yyy/
import content from "./components/food/content.vue"
import content1 from "./components/food/content1.vue"
import content2 from "./components/food/content2.vue"
import content3 from "./components/food/content3.vue"
import content6 from "./components/food/content6.vue"
import content5 from "./components/food/content5.vue"
import index2 from "./components/food/index2.vue"
//111
import Second from "./components/Carousel/Second.vue"
import Cp from "./components/Cp.vue"
//dd
import Publish from './views/Publish.vue'
import Home from './Home.vue'

/* 可引全局组件 */
Vue.use(Router)

export default new Router({
  routes: [
    {path:'/Regtab',component:Regtab},
    {path:'/Reg',component:Reg},
    {path:'/Reupwd',component:Reupwd},
    {path:'/SIdentify',component:SIdentify},
    {path:'/Header',component:Header},
    {path:'/Index',component:Index},
    {path:'/Qq',component:Qq},
    {path:'/test',component:test},
    {path:'/Bdmap',component:Bdmap},
    {path:'/Footer',component:Footer},
    //yyy
    {path:'/content5',component:content5},
    {path:'/content6',component:content6},
    {path:'/content3',component:content3},
    {path:'/content2',component:content2}, 
    {path:'/content1',component:content1},
    {path:'/content',component:content}, 
    {path:'/index2',component:index2}, 
    {path:"/Second",component:Second},
    {path:"/Cp",component:Cp},
    //
    {path:'/Publish',component:Publish},
    {path:'/Home',component:Home},
  ]
})
