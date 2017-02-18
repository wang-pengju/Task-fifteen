$(document).ready(function(){
   var globleType='推荐';
   refreshNews(globleType);

   $('nav a').click(function(e){
       e.preventDefault();
       var type=$(this).text();
       globleType=type;
       refreshNews(type);
   })
});

function refreshNews(globleType) {
    var $lists = $('article ul');
    $lists.empty();
    $.ajax({
        url: '/news',
        type: 'get',
        datatype: 'json',
        data:{newstype:globleType},
        success: function(data) {
            data.forEach(function(item,index,array) {
                var $list = $("<li></li>").addClass('news-list').prependTo($lists);
                var $newsImg = $('<div></div>').addClass('newsimg').appendTo($list);
                var $img = $('<img>').attr('src', item.newsimg).appendTo($newsImg);
                var $newsContent = $('<div></div>').addClass('newscontent').appendTo($list);
                var $h1 = $('<h1></h1>').html(item.newstitle).appendTo($newsContent);
                var $p = $('<p></p>').appendTo($newsContent);
                var $newsTime = $('<span></span>').addClass('newstime').html(moment(item.newstime).startOf('hour').fromNow()).appendTo($p);
                var $newsSrc = $('<span></span>').addClass('newssrc').html(item.newssrc).appendTo($p);

            })
        }
    });
}

