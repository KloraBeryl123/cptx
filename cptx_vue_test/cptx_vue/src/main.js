import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import iView from 'iview'
import 'iview/dist/styles/iview.css';
import 'iview/dist/iview.min.js';
import axios from "./axios";
import elementui from "element-ui";
import 'element-ui/lib/theme-chalk/index.css'


import Swiper from 'swiper' ;
import 'swiper/dist/css/swiper.min.css';
//引入图标字体样式文件
import'./font/iconfont.css'


Vue.use( new Swiper);

Vue.use(iView);

Vue.use(elementui);

Vue.config.productionTip = false
/* 整个网站只有一个new vue，此文件为脚手架配置vue */
/* 唯一 */
new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
