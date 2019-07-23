<template>
<div>
  <div class="swiper-container" style="width:990px;margin:0 auto">
    <div class="swiper-wrapper">
      <div class="swiper-slide">
      
        <img  style="margin-right:10px;width:300px;height:250px;position:relative;" src="../../assets/lunbo/01.png" alt="">
        <span class="img-sapn">油泼剪刀面</span>   
        <img  style="margin-right:10px;width:300px;height:250px;position:relative;" src="../../assets/lunbo/2.png" alt="">
        <span class="img-sapn">香脆芋头丝</span>  
        <img  style="width:300px;height:250px;position:relative;" src="../../assets/lunbo/3.png" alt="">
        <span class="img-sapn">甜菜根炒米饭</span>
      </div>
      <div class="swiper-slide">
         <img style="margin-right:10px;width:300px;height:250px;position:relative;" src="../../assets/lunbo/4.png" alt="">
          <span class="img-sapn">三杯鸡</span>
         <img style="margin-right:10px;width:300px;height:250px;position:relative;" src="../../assets/lunbo/5.png" alt="">
          <span class="img-sapn">台式三杯鸡</span>
         <img style="width:300px;height:250px;position:relative;" src="../../assets/lunbo/6.png" alt="">
          <span class="img-sapn">胡萝卜玉米汤</span>
      </div>
      
 
    </div>
   </div>
</div>
</template>
<script> 
import Swiper from 'swiper' ;
import 'swiper/dist/css/swiper.min.css';
  export default {
  data(){
   return{ 
     
   }
  },
   mounted(){
     window.onload=function(){
        var mySwiper = new Swiper('.swiper-container', {
          autoplay:true,
          loop:true
        })
      }
     }

    }
  
 
  
 
  
 
</script>

<style>
.swiper-container {
    width: 60%;
    height: 300px;
}
.img-sapn{
position:fixed !important;
top:110px;
left:110px}
</style>
