/**
 * Created by 麦兜 on 2018/7/11.
 */
window.onload=function a(){

    getChartData();

    function getChartData(){
        $.ajax({
            type:"get",
            url:'searchmyservlet',

            success:function(msg){
                //var obj=JSON.parse(res);
            	console.log('成功');
                console.log('msg:开始'+msg+'打印结束');
                var obj=eval("("+msg+")");
                console.log('obj  '+obj);
//                        转换数据（将json转化为数组）
//                        $.each(obj,function(key,val){
//
//                            var $liItem=createLi(val);
//                            $('#shop-list').append($liItem);
//                        });

                var chartData=obj;
                goChart(chartData);
            },
            error:function(xhr){
                alert('失败!'+xhr.status);
            }
        });
    }
//            goChart(chartData);
}
function goChart(dataArr){


    // 声明所需变量
    var canvas,ctx;
    // 图表属性
    var cWidth, cHeight, cMargin, cSpace;
    var originX, originY;
    // 折线图属性
    var tobalDots, dotSpace, maxValue;
    var totalYNomber;
    // 运动相关变量
    var ctr, numctr, speed;

    // 获得canvas上下文
    canvas = document.getElementById("chart");
    if(canvas && canvas.getContext){
        ctx = canvas.getContext("2d");
    }
    initChart(); // 图表初始化
    drawLineLabelMarkers(); // 绘制图表轴、标签和标记
    drawLineAnimate(); // 绘制折线图的动画

    //点击刷新图表
    canvas.onclick = function(){
        initChart(); // 图表初始化
        drawLineLabelMarkers(); // 绘制图表轴、标签和标记
        drawLineAnimate(); // 绘制折线图的动画
    };

    // 图表初始化
    function initChart(){
        // 图表信息
        cMargin = 60;
        cSpace = 80;
        /*这里是对高清屏幕的处理，
         方法：先将canvas的width 和height设置成本来的两倍
         然后将style.height 和 style.width设置成本来的宽高
         这样相当于把两倍的东西缩放到原来的 1/2，这样在高清屏幕上 一个像素的位置就可以有两个像素的值
         这样需要注意的是所有的宽高间距，文字大小等都得设置成原来的两倍才可以。
         */
        canvas.width = Math.floor( (window.innerWidth-100)/2 ) * 2 ;
        canvas.height = 740;
        canvas.style.height = canvas.height/2 + "px";
        canvas.style.width = canvas.width/2 + "px";
        cHeight = canvas.height - cMargin - cSpace;
        cWidth = canvas.width - cMargin - cSpace;
        originX = cMargin + cSpace;
        originY = cMargin + cHeight;

        // 折线图信息
        tobalDots = dataArr.length;
        dotSpace = parseInt( cWidth/tobalDots );
        maxValue = 0;
        for(var i=0; i<dataArr.length; i++){
            var dotVal = parseInt( dataArr[i][1] );
            if( dotVal > maxValue ){
                maxValue = dotVal;
            }
        }
        maxValue += 50;
        totalYNomber = 10;
        // 运动相关
        ctr = 1;
        numctr = 100;
        speed = 6;

        ctx.translate(0.5,0.5);  // 当只绘制1像素的线的时候，坐标点需要偏移，这样才能画出1像素实线
    }

    // 绘制图表轴、标签和标记
    function drawLineLabelMarkers(){
        ctx.font = "24px Arial";
        ctx.lineWidth = 2;
        ctx.fillStyle = "#ffffff";
        ctx.strokeStyle = "#ffffff";
        // y轴
        drawLine(originX, originY, originX, cMargin);
        // x轴
        drawLine(originX, originY, originX+cWidth, originY);

        // 绘制标记
        drawMarkers();
    }

    // 画线的方法
    function drawLine(x, y, X, Y){
        ctx.beginPath();
        ctx.moveTo(x, y);
        ctx.lineTo(X, Y);
        ctx.stroke();
        ctx.closePath();
    }

    // 绘制标记
    function drawMarkers(){
        ctx.strokeStyle = "#E0E0E0";
        // 绘制 y 轴 及中间横线
        var oneVal = parseInt(maxValue/totalYNomber);
        ctx.textAlign = "right";
        for(var i=0; i<=totalYNomber; i++){
            var markerVal =  i*oneVal;
            var xMarker = originX-5;
            var yMarker = parseInt( cHeight*(1-markerVal/maxValue) ) + cMargin;

            ctx.fillText(markerVal, xMarker, yMarker+3, cSpace); // 文字
            if(i>0){
                drawLine(originX+2, yMarker, originX+cWidth, yMarker);
            }
        }
        // 绘制 x 轴 及中间竖线
        ctx.textAlign = "center";
        for(var i=0; i<tobalDots; i++){
            var markerVal = dataArr[i][0];
            var xMarker = originX+i*dotSpace;
            var yMarker = originY+30;
            ctx.fillText(markerVal, xMarker, yMarker, cSpace); // 文字
            if(i>0){
                drawLine(xMarker, originY-2, xMarker, cMargin	);
            }
        }
        // 绘制标题 y
        ctx.save();
        ctx.rotate(-Math.PI/2);
        ctx.fillText("销售额（￥）", -canvas.height/2, cSpace-10);
        ctx.restore();
        // 绘制标题 x
        ctx.fillText("月份", originX+cWidth/2, originY+cSpace/2+20);
    };

    //绘制折线图
    function drawLineAnimate(){
        ctx.strokeStyle = "#6ca8eb";

        //连线
        ctx.beginPath();
        for(var i=0; i<tobalDots; i++){
            var dotVal = dataArr[i][1];
            var barH = parseInt( cHeight*dotVal/maxValue* ctr/numctr );//
            var y = originY - barH;
            var x = originX + dotSpace*i;
            if(i==0){
                ctx.moveTo( x, y );
            }else{
                ctx.lineTo( x, y );
            }
        }
        ctx.stroke();

        //背景
        ctx.lineTo( originX+dotSpace*(tobalDots-1), originY);
        ctx.lineTo( originX, originY);
        //背景渐变色
        //柱状图渐变色
        var gradient = ctx.createLinearGradient(0, 0, 0, 300);
        gradient.addColorStop(0, 'rgba(133,171,212,0.6)');
        gradient.addColorStop(1, 'rgba(133,171,212,0.1)');
        ctx.fillStyle = gradient;
        ctx.fill();
        ctx.closePath();
        ctx.fillStyle = "#ffffff";

        //绘制点
        for(var i=0; i<tobalDots; i++){
            var dotVal = dataArr[i][1];
            var barH = parseInt( cHeight*dotVal/maxValue * ctr/numctr );
            var y = originY - barH;
            var x = originX + dotSpace*i;
            drawArc( x, y );  //绘制点
            ctx.fillText(parseInt(dotVal*ctr/numctr), x+15, y-8); // 文字
        }

        if(ctr<numctr){
            ctr++;
            setTimeout(function(){
                ctx.clearRect(0,0,canvas.width, canvas.height);
                drawLineLabelMarkers();
                drawLineAnimate();
            }, speed);
        }
    }

    //绘制圆点
    function drawArc( x, y, X, Y ){
        ctx.beginPath();
        ctx.arc( x, y, 3, 0, Math.PI*2 );
        ctx.fill();
        ctx.closePath();
    }


}