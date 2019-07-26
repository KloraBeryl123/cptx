<template>
<div>
  <regtab></regtab>
  
	<div id="home_banner" class="home-banner">
  	<div class="carousel-wrap">
  		<transition-group class="slide-ul" tag="ul" name="list">
  			<li v-for="(item , index) in homebanner" :key="index" v-show="index==currentIndex">
  				<img :src="item.banerimg">
  			</li>
 		 </transition-group>
  	</div>
  </div>
   
</div>
  
</template>
<script>
import Regtab from "../components/Regtab";
import Header from "./Header"
export default {

  name: 'home-banner',
  data() {
      return {
          homebanner : [
        {'banerimg':require('./../assets/img_reg/bg_2.jpg')},
			  {'banerimg':require('./../assets/img_reg/bg_3.jpg')},
			  {'banerimg':require('./../assets/img_reg/bg_1.jpg')},
			  {'banerimg':require('./../assets/img_reg/bg_4.jpg')},

          ],
          currentIndex: 0,
          timer: ''
      }
  },
  methods:{
      change(index) {
          this.currentIndex = index
      },
      autoPlay() {
          this.currentIndex++;
          if (this.currentIndex > this.homebanner.length - 1) {
              this.currentIndex = 0
          }
      }
  },
  mounted (){
      this.$nextTick( function () {
          this.timer = setInterval(() => {
          this.autoPlay()
      },2000)

      })
  },
  components:{
     "regtab":Regtab,
     "headera":Header,
   },
}
</script>
<style scoped>
.home-banner {
  height: 850px;
  position: relative;
  z-index:-3;
}
/*轮播组件开始*/
.carousel-wrap {
  position: relative;
  height: 100%;
  width: 100%;
  overflow: hidden;
  background-color: #fff;
}
.slide-ul {
 width: 100%;
 height: 100%;
 padding: 0;
 margin: 0;
}
.slide-ul >li{
  position: absolute;
  width: 100%;
  height: 100%;
}
.slide-ul >li>img{
  width: 100%;
  height: 100%;
}
 .active {
  background-color: red;
 }
.list-enter-active {
  transition: all .5s linear;
  transform: translateX(0)
}

.list-leave-active {
 transition: all .5s linear;
 transform: translateX(0%)
}

.list-enter {
 transform: translateX(0%)
}

.list-leave {
 transform: translateX(0%)
}
/*轮播组件结束*/
</style>
