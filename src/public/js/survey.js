$(document).ready(function(e) {
    //$(".VoteValue").css("margin-top",$(this).hei
    Vote.Init();
});
var Vote={
    voteJson:[
        //不能超过120
        {Name:"平和",Img:"/images/survey/1.jpg",Value:result_value_1},
        {Name:"气虚",Img:"/images/survey/2.jpg",Value:result_value_2},
        {Name:"阳虚",Img:"/images/survey/3.jpg",Value:result_value_3},
        {Name:"阴虚",Img:"/images/survey/4.jpg",Value:result_value_4},
        {Name:"气郁",Img:"/images/survey/5.jpg",Value:result_value_5},
        {Name:"痰湿",Img:"/images/survey/6.jpg",Value:result_value_6},
        {Name:"血瘀",Img:"/images/survey/7.jpg",Value:result_value_7},
        {Name:"湿热",Img:"/images/survey/8.jpg",Value:result_value_8},
        {Name:"特禀",Img:"/images/survey/9.jpg",Value:result_value_9}
    ],
    Init:function(){
        for(var i=0;i<Vote.voteJson.length;i++){
            var mName=Vote.voteJson[i].Name;
            var mImg=Vote.voteJson[i].Img;
            var mValue=Vote.voteJson[i].Value;
            var VoteItem=$("<div></div>");
            VoteItem.attr("class","VoteItem");
            $("#VoteMain").append(VoteItem);

            var VoteImg=$("<img src=\""+mImg+"\" />");
            VoteImg.attr("class","VoteImg");
            VoteItem.append(VoteImg);

            var VoteValue=$("<div></div>");
            VoteValue.attr("class","VoteValue");
            VoteValue.css("margin-top",160-20-mValue+"px");
            VoteValue.animate({height:mValue+"px"},500);
            VoteItem.append(VoteValue);

            var VoteSpan=$("<div>"+mValue+"</div>");
            VoteSpan.attr("class","VoteSpan");
            VoteValue.append(VoteSpan);

            var VoteSpanTri=$("<span></span>");
            VoteSpanTri.attr("class","VoteSpanTri");
            VoteSpan.append(VoteSpanTri);


            var VoteText=$("<p></p>");
            VoteText.html(mName);
            VoteText.attr("class","VoteText");
            VoteItem.append(VoteText);
        }
    }
}
