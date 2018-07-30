/**
 * Created by 麦兜 on 2018/7/6.
 */
function ajax(url,timeout,success,error){
    var oAjax,timer;
    if(window.XMLHttpRequest){
        oAjax=new XMLHttpRequest();
    }
    else{
        oAjax=new ActiveXObject('Microsoft.XMLHTTP');
    }
    oAjax.open('GET',url,true);
    oAjax.send();

    oAjax.onreadystatechange=function(){
        if(oAjax.readyState==4){
            if(oAjax.status==200||oAjax.status==304){
                //success(oAjax.responseText);
                success(oAjax);
            }
            else{
                //error(oAjax.status);
                error(oAjax);
            }
        }
    }
    if(timeout){
        timer=setInterval(function(){
            console.log('中断请求');
            oAjax.abort();
            clearInterval(timer);
        },timeout);
    }
}
