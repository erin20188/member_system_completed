/**
 * Created by 麦兜 on 2018/7/6.
 */
//$(function(){
//    //设置超时时间9秒
//    ajax("xxxServlet",function(val){
//        //alert(val.responseText);
//        var res=val.responseText();
//        //var obj=JSON.parse(res);
//        var obj=eval("("+res+")");
//        var $liItem=createLi(obj);
//        $('#shop-list').append($liItem);
//
//        //var subObj=obj[0];
//        //$('#shop-name').innerHTML=subObj.;
//        //$('#distingu').innerHTML=subObj.;
//        //$('#comment-num').innerHTML=subObj.;
//        //$('#addre').innerHTML=subObj.;
//    },9000,function(val){
//        alert('失败!'+val.status);
//    })
//});

$(function(){
    getfoodList();
//需要完善后台传入page页
    function getfoodList(){
        $.ajax({
            type:"get",
            url:'searchfoodnew',

            //async:true,
            //dataType:'jsonp',
            //jsonp:'callback',

            success:function(msg){
                //var obj=JSON.parse(res);
                var obj=eval("("+msg+")");
                $.each(obj,function(key,val){
                    var $liItem=createLi(val);
                    $('#shop-list').append($liItem);
                });
            },
            error:function(xhr){
                alert('失败!'+xhr.status);
            }
        });
    }
});

