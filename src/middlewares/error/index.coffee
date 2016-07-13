
module.exports =
() ->
    (ctx, next) ->
        new Promise (resolve) ->
            next()
            .then () ->
                # 根据 status 渲染不同的页面
                if  ctx.status == 403
                    ctx.render '403.html'
                    .then (data) ->
                        ctx.body = data
                if  ctx.status == 404
                    ctx.render '404.html'
                    .then (data) ->
                        ctx.body = data
                if ctx.status == 500
                    ctx.render '500.html'
                    .then (data) ->
                        ctx.body = data
            .then () ->
                #触发 koa 统一错误事件，可以打印出详细的错误堆栈 log
                # ctx.app.emit('error', e, ctx)
                resolve()

