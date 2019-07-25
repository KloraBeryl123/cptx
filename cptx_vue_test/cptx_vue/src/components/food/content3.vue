<template>
<div>
  <div class="swiper-container">
    <div class="swiper-wrapper">
      <div class="swiper-slide" >
          <img src="../../assets/lunbo/01.png" alt="">
          <img src="../../assets/lunbo/2.png" alt=""> 
          <img src="../../assets/lunbo/3.png" alt=""> 
      </div>
      <div class="swiper-slide">
         <img src="../../assets/lunbo/4.png" alt="">
         <img src="../../assets/lunbo/5.png" alt="">     
         <img src="../../assets/lunbo/6.png" alt="">  
      </div>
      <div class="swiper-slide">
         <img  src="../../assets/lunbo/7.png" alt=""> 
         <img  src="../../assets/lunbo/8.png" alt="">
         <img  src="../../assets/lunbo/9.png" alt="">    
      </div>     
    </div>
    <div class="swiper-button-prev"></div>
    <div class="swiper-button-next"></div> 
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
     
        var mySwiper = new Swiper('.swiper-container', {
          direction: 'horizontal',
          loop: false,
          navigation: {
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev',
            },
        })
      }
     }

    
  
 
  
 
  
 
</script>

<style>
.swiper-container {
    width:72%;
    height:300px;
    margin:0 auto;
    margin-top:30px;
}
.swiper-slide img{width:32%;height:100%;border-radius:6px;}
.swiper-slide img:hover{transform:scale3d(1.1, 1.1, 1);transition:all ease .8s}
.swiper-slide img+img{margin-right:14px}
.swiper-slide img:first-child{margin-right:14px;margin-left:5px}
.swiper-button-next{
  right:35px !important;top:41% !important;width:34px !important;height:40px !important;background-color:#000 !important;opacity: .3 !important;background-image:url("data:image/svg+xml;charset=utf-8,%3Csvg%20xmlns%3D'http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg'%20viewBox%3D'0%200%2027%2044'%3E%3Cpath%20d%3D'M27%2C22L5%2C44l-4.2-4.2L18.6%2C22L0.8%2C4.2L5%2C0z'%20fill%3D'%23ffffff'%2F%3E%3C%2Fsvg%3E") !important;
background-size: 15px 88px !important;
border-radius:5px !important;
}
.swiper-button-prev{right:30px !important;top:41% !important;
width:33px !important;height:40px !important; background-image:url("data:image/svg+xml;charset=utf-8,%3Csvg%20xmlns%3D'http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg'%20viewBox%3D'0%200%2027%2044'%3E%3Cpath%20d%3D'M0%2C22L22%2C0l4.2%2C4.2L8.4%2C22l17.8%2C17.8L22%2C44L0%2C22z'%20fill%3D'%23ffffff'%2F%3E%3C%2Fsvg%3E") !important;
background-size: 15px 88px !important;
border-radius:5px !important;background-color:#000 !important;opacity: .4 !important;}
</style>