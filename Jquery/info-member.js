/**
 * Created by 麦兜 on 2018/7/4.
 */
var homeP=$('#'+'homePage');
var infoP=$('#'+'infoPage');
var rePasswordP=$('#'+'rePasswordPage');
var commentP=$('#'+'commentPage');
var feedbackP=$('#'+'feedbackPage');
$(function(){
//    考虑如何判断当前哪个页面在显示
    $('#'+'info').on('click',function(){
        closeAll();
        infoP.css('display','block');
    })
    $('#'+'rePassword').on('click',function(){
        closeAll();
        rePasswordP.css('display','block');
    })
});
function closeAll(){
    homeP.css('display','none');
    infoP.css('display','none');
    rePasswordP.css('display','none');
    commentP.css('display','none');
    feedbackP.css('display','none');
}

