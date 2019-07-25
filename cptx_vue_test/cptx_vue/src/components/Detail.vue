<template>
    <div style="width:100%;margin:0 auto">
       <video src="../assets/mda-jbmmu19cuuc45wai.mp4" controls poster="../assets/sp.jpg" preload="metadata" id="v3" style="width:83%;height:400px;object-fit: fill"></video>
    </div>
</template>
<script>

export default {
	data(){
        return{}
    },
    mounted() {
        var v3=document.getElementById("v3");
        v3.addEventListener("canplaythrough",function(){
            console.log("视频加载成功可以播放");
            console.log(v3.duration);
        });
        v3.addEventListener("ended",function(){
            console.log("视频播放结束");
        });
        v3.addEventListener("timeupdate",function(){
            console.log(v3.currentTime);
        });
    },
	
}
</script>
    
<style scoped>
    video{width:100%;height:100%;overflow:hidden}
</style>