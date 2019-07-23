<template>
    <div>
      <div id="footer" style="border-top:1px solid #ddd;margin-bottom:20px">

      <div class="footer1" style="inline-block;margin-top:10px">
       <a target="_blank" style="color:#f50;" href="#" title="美食天下 - 让吃更美好">美食天下 - 让吃更美好！</a>
       <p style="width:680px;margin-right:0;inline-block">
            <a target="_blank" title="食材" href="#">食材</a> ·
            <a target="_blank" title="美食魔方" href="#">魔方</a> ·
            <a target="_blank" href="#" title="关于我们">关于我们</a> ·
            <a target="_blank" href="#" title="联系我们">联系我们</a> ·
            <a target="_blank" href="#" title="加入我们">加入我们</a> ·
            <a target="_blank" href="#" title="服务声明">服务声明</a> ·
            <a target="_blank" href="#" title="友情链接">友情链接</a> ·
            <a target="_blank" href="#" title="网站地图">网站地图</a> ·
            <a target="_blank" title="移动应用" href="#">移动应用</a>
       </p>
       <p style="inline-block;">© 2004-2019 美食天下 保留所有权利 - 京ICP证090244号</p>
</div>
       <div class="f3" style="inline-block;margin-top:10px">
       <img src="../../assets/app.png" style="width:80px;height:80px" alt="">
       <p style="margin:0;font-size:12px">手机客户端</p>
       </div>
       <div class="f4" style="inline-block;margin-top:10px">
       <img src="../../assets/weixin2.png" style="width:80px;height:80px" alt="">
       <p style="margin:0;font-size:12px">微信客户端</p>
       </div>
    
      </div> 

      
       
    </div>
</template>
<script>
//导出默认对象
    export default {
        data(){//当前组件共享的数据
            return {
                
            }//数据
        },
        methods: {
            
        },
      
        
        
    }
</script>
<style>
#footer{width:70%;margin:0 auto}
#footer a{text-decoration:none;}
.footer1>p>a{color:#666;}
.footer1{float:left;clear:none;width:680px;}
.f3{clear: none;
    float: right;
    text-align: center;margin-right:20px}
.f4{clear: none;
    float: right;
    text-align: center;}
</style>