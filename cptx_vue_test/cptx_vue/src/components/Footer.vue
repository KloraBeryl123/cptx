<template>
<div>
<!-- 底部 _start-->

<div class="site-footer">

	<div class="footer-related">

		<div class="footer-article w1100">
			<dl class="contact clearfix">
				<dt class="fl">
					<i class="iconfont"></i>
				</dt>
				<dd class="fl">
					<p class="text">意见反馈热线</p>
					<p class="tel">400-xxx-x000</p>
					<a href="#" >在线反馈</a>
				</dd>
			</dl>

			<dl class="col-article">
				<dt>电商产品</dt>

				<dd>
					<a  href="#">云小店</a>
				</dd>

				<dd>
					<a  href="#">书籍商城</a>
				</dd>

				<dd>
					<a  href="#">视频商城</a>
				</dd>

				<dd>
					<a  href="#">批发商城</a>
				</dd>
			</dl>

			<dl class="col-article">
				<dt>行业方案</dt>

				<dd>
					<a  href="#">新零售</a>
				</dd>

				<dd>
					<a  href="#">O2O</a>
				</dd>

				<dd>
					<a  href="#">实体商超</a>
				</dd>

				<dd>
					<a  href="#">多供应商</a>
				</dd>


			</dl>

			<dl class="col-article">
				<dt>帮助中心</dt>

				<dd>
					<a  href="#">新手手册</a>
				</dd>

				<dd>
					<a  href="#">视频教程</a>
				</dd>

				<dd>
					<a  href="#">云商城</a>
				</dd>

				<dd>
					<a  href="#">云物流</a>
				</dd>
			</dl>

			<!--关于我们-->
			<dl class="col-article">
				<dt>关于我们</dt>

				<dd>
					<a href="#">网站简介</a>
				</dd>

				<dd>
					<a href="#">服务市场</a>
				</dd>

				<dd>
					<a href="#">客户案例</a>
				</dd>

				<dd>
					<a href="#">代理合作</a>
				</dd>

			</dl>
			<!--关注商之云-->
			<dl class="wx">
				<dt>关注我们</dt>
				<dd>
					<img src="../assets/qqewm.png">
				</dd>
			</dl>
		</div>
	</div>
</div>

<!--手机验证消息-->
<div class="validInfo"></div>
<!-- 底部 _start-->
</div>    
</template>
<style scoped>

*{margin: 0;padding: 0;font-family: "微软雅黑";}
.clearfix:after {content: ".";display: block;height: 0;visibility: hidden;clear: both;}
.w1100 {width: 1100px;margin: 0 auto;}
.fl {float: left;}
a{text-decoration: none;}
ul{list-style: none;}

/*底部*/
.site-footer { font-size: 14px; line-height: 1.8; color: #a8aaba; background:#F4F6F9;}
.site-footer a { color: #a8aaba;}
.site-footer a:hover { color: #DB432E !important;}
.site-footer .footer-article { padding: 30px 0 20px; overflow: hidden;}
.site-footer .contact { float: left; width: 280px;}
.site-footer .contact dt { width: 90px;}
.site-footer .contact .iconfont { background: url(../assets/kefu.png) center center no-repeat;width: 66px;height: 66px; display: block;float: left;background-size: 55px;}
.site-footer .contact .text { font-size: 14px; line-height: 30px; color:black;}
.site-footer .contact .tel { padding: 3px 0 15px; font-size: 20px; color: black;}
.site-footer .contact a { display: block; width: 90px; font-size: 14px; line-height: 30px; color: #000; text-align: center; border: 1px solid #9b9ea0; border-radius: 4px;}
.site-footer .contact a:hover { color: #000 !important;}
.site-footer .col-article { float: left; width: 171px;}
.site-footer .col-article dt { margin-bottom: 15px; font-size: 16px; font-weight: normal; color: #000;}
.site-footer .col-article dd { margin-bottom: 8px; overflow: hidden;}
.site-footer .col-article dd a { font-size: 12px; color: #000; text-overflow: ellipsis; white-space: nowrap; overflow: hidden;}
.site-footer .wx { float: left; width: 135px; margin-right: 0;}
.site-footer .wx dt { margin-bottom: 15px; font-size: 16px; font-weight: normal; color: #000;}
.site-footer .wx dd { margin-bottom: 15px;}
.site-footer .wx dd img { display: block; width: 110px; height: 110px; margin: 5px 0; border-radius: 2px;}
.site-footer .wx dd.other { margin-bottom: 0; line-height: 18px;}
.site-footer .wx dd.other span { display: block; font-size: 12px;}
.site-footer .wx dd.other a { display: inline-block; margin-right: 5px; font-size: 12px; line-height: 18px; vertical-align: top;}
.footer-links { padding: 10px 0; border-top: 1px solid #41424c; border-bottom: 1px solid #41424c;}
.footer-links p { font-size: 14px; color: #a8aaba;}
.footer-links a { margin-right: 20px; font-size: 12px; color: #a8aaba;}
.footer-info .info-text { padding: 20px 0; font-size: 12px; text-align: center;}
.footer-info .info-text .nav-bottom { padding: 20px 0 5px; font-size: 14px; color: #ccc; text-align: center;}
.footer-info .info-text .nav-bottom a { padding: 0 8px; color: #9b9ea0;}
.footer-info .info-text .copyright { padding-top: 5px;}
.footer-info .info-text em { padding: 0 8px;}
</style>
