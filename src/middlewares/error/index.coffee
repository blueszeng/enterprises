
module.exports =
() ->
    (ctx, next) ->
        new Promise (resolve) ->
            next()
            .then () ->
                if  ctx.status == 404 or  ctx.status == 500
                    ctx.body = '
                    <!DOCTYPE html>
                    <html lang="zh-CN">
                      <head>
                        <title>Page title</title>
                        <meta http-equiv="X-UA-Compatible" content="IE=Edge">
                        <meta charset="UTF-8">
                        <link rel="stylesheet" href="/bootstrap/css/bootstrap.css">
                        <link rel="stylesheet" href="/css/common.css">
                        <style type="text/css">
                          .container {margin-left: auto; width: 100%; margin-right: auto; text-align: center; margin-top:100px;}
                          .container_1 img { max-width:250px;}
                          .container_2 img { max-width:360px;}
                          .container_3 img { width:25%; height:7.5%;}
                          .container_3 { width:28vw; margin:auto}
                          .container_3_1 { color:#6bbaa3; font-size:2vw; text-align:left;}
                          .container_3_2 { color:#6bbaa3; font-size:1vw; text-align:left;}
                          .maincolumn {margin-left: auto; width: 100%; margin-right: auto; text-align: center;display:block; margin-top:10px;}
                          .maincolumn .maincolumn_bg { width:28%; height:50px; line-height:50px; background-color:#6bbaa3; margin:auto;}
                          .maincolumn .maincolumn_bg ul {list-style-type: none;}
                          .maincolumn .maincolumn_bg ul li { float:left;  width:25%;}
                          .maincolumn .maincolumn_bg ul li a{ font-size: 18px; }
                          .maincolumn .maincolumn_bg ul li a:hover { width:100%; height:50px; background-color:#47997d; display:block;}
                        </style>
                      </head>
                      <body>
                      <div class="container">
                        <div class="container_1"><img src="/images/404.png"></div>
                        <div class="container_2"><img src="/images/3.22.gif"></div>
                        <div class="container_3">
                          <div class="container_3_1"><span>SORRY你要访问的页面弄丢了</span></div>
                          <div class="container_3_2"><span>你可以通过以下方式重新访问......</span></div>
                        </div>
                      </div>
                      <div class="maincolumn">
                        <div class="maincolumn_bg">
                            <a href="/">返回首页</a>
                        </div>
                        <div></div>
                      </div>
                      </body>
                    </html>
                    '

                # 根据 status 渲染不同的页面
                if  ctx.status == 403
                    ctx.render '/error/403'
                    .then (data) ->
                        ctx.body = data
                if  ctx.status == 404
                    ctx.render 'error/403'
                    .then (data) ->
                        console.log data
                        ctx.body = data
                    .catch (err) ->
                        console.log err
                if ctx.status == 500
                    ctx.render '/error/500'
                    .then (data) ->
                        ctx.body = 24243
            .catch (err) ->
                console.log err
            .then () ->
                #触发 koa 统一错误事件，可以打印出详细的错误堆栈 log
                # ctx.app.emit('error', e, ctx)
                return resolve()
