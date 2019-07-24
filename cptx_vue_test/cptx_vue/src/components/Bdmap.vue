<template>
  <div id="allmap">
    
  </div>
</template>
<script>

export default {
  name: 'HelloWorld',
  data () {
    return {
      msg: '测试一下'
    }
  },
  mounted(){
    //创建实例
    var map = new BMap.Map("allmap");
    //创建坐标点
    var point = new BMap.Point(117.062242,36.684359);
    //初始化实例，传入坐标点并设置地图级别
     map.centerAndZoom(point, 14);
      map.addControl(new BMap.MapTypeControl());
      map.enableScrollWheelZoom(true);
      map.enableDoubleClickZoom(true);
      var marker = new BMap.Marker(point);
      map.addOverlay(marker);
      },
}
</script>
<style>
#allmap{
    width:100%;
    height: 300px;
}
</style>
