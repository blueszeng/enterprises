
module.exports =
() ->
    (ctx, next) ->
        new Promise (resolve) ->
            next()
            .then () ->
                # 根据 status 渲染不同的页面
                console.log(ctx.status)
                if  ctx.status == 403
                    ctx.render 'error/403'
                    .then (data) ->
                        ctx.body = data
                if  ctx.status == 404
                    ctx.render 'error/404'
                    .then (data) ->
                        ctx.body = data
                if ctx.status == 500
                    ctx.render 'error/500'
                    .then (data) ->
                        ctx.body = data
            .catch (err) ->
                console.log err
            .then () ->
                #触发 koa 统一错误事件，可以打印出详细的错误堆栈 log
                # ctx.app.emit('error', e, ctx)
                resolve()
