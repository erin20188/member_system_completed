/**
 * Created by 麦兜 on 2018/6/30.
 */
$(function(){
    $('#realName').on('blur',function(){
        valiRealName();
    });
    $('#nickName').on('blur',function(){
        valiNickName();
    });

    $('#newMember-btn').on('submit',function(){
        return valiRealName()&&valiNickName();
    })
})

function valiRealName(){
    return valiEmpty('realName');
}
function valiNickName(){
    return valiEmpty('nickName');
}

function valiEmpty(eleId){
    if($('#'+eleId).val()==''){
        $('#'+eleId).addClass('is-invalid');
        $('#'+eleId+'-input-check').html('<span class="text-danger"><i class="icon-remove"></i>该字段不能为空</span>');
        return false;
    }
    else{
        if( $('#'+eleId).hasClass('is-invalid')){
            $('#'+eleId).removeClass('is-invalid');
        }
        $('#'+eleId).addClass('is-valid');
        $('#'+eleId+'-input-check').html('<span class="text-success"><i class=" icon-ok"></i>正确</span>');
        return true;
    }
}
