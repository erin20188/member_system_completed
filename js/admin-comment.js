/**
 * Created by 麦兜 on 2018/7/17.
 */
$(function(){
    function  toUpdate(obj1, obj2) {
        var name,retn;
        //sId = document.getElementById("jspSID_" + obj1).value;
        name = document.getElementById("jspcompName_" + obj1).value;
        //born = document.getElementById("jspBorn_" + obj1).value;
        retn = confirm("确认删除该评价吗?");
        if(retn)
        {          window.location = "comfirmmerchantServlet?name=" + name +"&&currentPage=" + obj2;
        }
    }
})
