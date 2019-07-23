<template>
    <div class="lun_w" :style="{width:innerWidth+'px'}">
        <div class="lun_w_h" :class="ulClass" :style="ulStyle">
            
            <div class="lun_h" v-for="(item,i) of list" :key="i" :style="{width:innerWidth+'px'}">
                <div class="lun_h_a">
                    <a href="#"><p>{{item.title1}}</p></a>
                    <span>{{item.subtitle1}}</span>
                    <span>{{item.detail1}}</span>
                </div>
                <div class="lun_h_a">
                    <a href="#"><p>{{item.title2}}</p></a>
                    <span>{{item.subtitle2}}</span>
                    <span>{{item.detail2}}</span>
                </div>
                <div class="lun_h_a">
                    <a href="#"><p>{{item.title3}}</p></a>
                    <span>{{item.subtitle3}}</span>
                    <span>{{item.detail3}}</span>
                </div>
            </div>
            <div class="lun_h" :style="{width:innerWidth+'px'}">
                <div class="lun_h_a">
                    <a href="#"><p>{{list[0].title1}}</p></a>
                    <span>{{list[0].subtitle1}}</span>
                    <span>{{list[0].detail1}}</span>
                </div>
                <div class="lun_h_a">
                    <a href="#"><p>{{list[0].title2}}</p></a>
                    <span>{{list[0].subtitle2}}</span>
                    <span>{{list[0].detail2}}</span>
                </div>
                <div class="lun_h_a">
                    <a href="#"><p>{{list[0].title3}}</p></a>
                    <span>{{list[0].subtitle3}}</span>
                    <span>{{list[0].detail3}}</span>
                </div>
            </div>
        </div>
        <div>
            <div class="img_div1" @click="move(1)">
                <a href="#">
                    <img src="../../../public/img/zuoyoujiantou-2.png" alt="">
                </a>
            </div>
            <div class="img_div2" @click="move(-1)">
                <a href="#">
                    <img src="../../../public/img/icon-arrow-right.png" alt="">
                </a>
            </div>
        </div>
    </div>
</template>
<script>
export default {
    data(){
        return{
            i:0,
            innerWidth:window.innerWidth*0.695,
            canClick:true,
            list:[],
            ulClass:{
                hasTrans:true
            }

        }
    },
    created() {
        var url="four";
        this.axios.get(url).then(result=>{
            console.log(result.data);
            this.list=result.data;
        });
    },
    methods: {
      move(i){
          if(this.canClick){
        this.canClick=false;
        if(i==-1&&this.i==0){//如果向右移动，且正在显示第1张图片，就要骗
          this.ulClass.hasTrans=false;//去掉父级div上的transition样式类
          setTimeout(()=>{//等50ms后，再进行后续操作
            this.i=this.list.length; //悄悄的将父级div移动到最左边
            setTimeout(()=>{//等50ms后，再进行后续操作
              this.ulClass.hasTrans=true;//打开父级div上的transition效果
              this.i+=i;//正式向右移动一次
              setTimeout(()=>{//200s后，才允许单击
                this.canClick=true;
              },200)
            },50)
          },50)
        }else if(i==1&&this.i==this.list.length){
          //如果向左移动，且现在已经显示最后一张了
          //可以先带transition效果，左移一次
          //等左移完，再去掉transition效果，骗用户
            this.ulClass.hasTrans=false;
            setTimeout(()=>{//等50ms后，瞬间将父级div移动到显示第一张图片
              this.i=0;
              setTimeout(()=>{//等50ms后，再次启用transition，为下次提供动画
                this.ulClass.hasTrans=true;
                this.i+=i;
                setTimeout(()=>{//稍等片刻之后允许单击
                  this.canClick=true;
                },50)
              },50)
            },50)
          
        }else{//如果不是两端的情况，则保持原来的逻辑
          this.i+=i;
          setTimeout(()=>{
            this.canClick=true;
          },300)
        }
      }
    },
      
      
    },
    computed: {
         ulStyle(){
           var marginLeft=-this.i*this.innerWidth+'px';
           var width=this.innerWidth*(this.list.length+1)+'px';
           return{width,marginLeft}
       }
    },
}
</script>
<style scoped>
    .lun_w{width:990px;position:relative;overflow:hidden;}
    .lun_w_h{width:3960px;display:flex;}
    .lun_h,.lun_h1,.lun_h2{width:990px;display:flex;justify-content:space-around;margin-top:10px;background:#ddd;padding-top:20px;padding-bottom:20px;width:990px;}
    .lun_h_a{display:flex;flex-direction:column;width:28%;}
    .lun_h_a span{font-size:10px;color:#999}
    p{font-size:20px;color:#333;font-weight:400}
    .lun_h_a span:last-child{font-size:12px;color:#333}
    .img_div1 img,.img_div2 img{width:23px;height:23px;position:absolute;top:60px;left:2px;display:none;border-radius:50%;padding:3px}
    .lun_w:hover .img_div1 img{display:block}
    .lun_w:hover .img_div2 img{display:block}
    .img_div2 img{left:959px;}
    .img_div2 img:hover,.img_div1 img:hover{background:#c3bbbb}
</style>