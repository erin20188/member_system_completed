var mhomeP=$('#'+'mHomepage');
var minfoP=$('#'+'mInfopage');
var mpicP=$('#'+'mPicpage');
var mproductP=$('#'+'mProductpage');
var meventP=$('#'+'mEventpage');
var mpwdP=$('#'+'mPwdpage');
var mreviewP=$('#'+'mReviewpage');

$(function() {
    $('#'+'mcent-home').on('click',function(){
        closeAll();
        mhomeP.css('display','block');
    })
    $('#'+'mcent-info').on('click',function(){
        closeAll();
        minfoP.css('display','block');
    })
    $('#'+'mcent-picture').on('click',function(){
        closeAll();
        mpicP.css('display','block');
    })
    $('#'+'mcent-product').on('click',function(){
        closeAll();
        mproductP.css('display','block');
    })
    $('#'+'mcent-event').on('click',function(){
        closeAll();
        meventP.css('display','block');
    })
    $('#'+'mcent-password').on('click',function(){
        closeAll();
        mpwdP.css('display','block');
    })
    $('#'+'mcent-review').on('click',function(){
        closeAll();
        mreviewP.css('display','block');
    })
});

function closeAll() {
    mhomeP.css('display','none');
    minfoP.css('display','none');
    mpicP.css('display','none');
    mproductP.css('display','none');
    meventP.css('display','none');
    mpwdP.css('display','none');
    mreviewP.css('display','none');
}