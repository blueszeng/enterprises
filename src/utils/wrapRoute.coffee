_debug = require('debug')
_ = require('lodash')
debug = _debug('backend:utils:wrapRoute')

module.exports = (fn, args) ->
    (ctx) ->
        new Promise (resolve, reject) ->
            isPost = ctx.method == 'POST'
            isAjax = ctx.headers['X-Requested-With'] == 'XMLHttpRequest'
            fn.apply ctx, [ctx, args]
            .then (data) ->
                # console.log data, ctx.method
                ctx.status = if isPost then 201 else 200
                if isAjax
                    ctx.body = status: true, data: data.data
                else
                    if data.redirect
                        ctx.status = 301
                        ctx.redirect(data.url)
                        resolve()
                    else
                        ctx.render data.template, data.data
                        .then (data) ->
                            ctx.body = data
                            resolve()
                        .catch (err) ->
                            console.log err
                            resolve()
            .catch (err) ->
                if isAjax
                    if _.isPlainObject err
                        debug '服务处理异常: %s', JSON.stringify(err)
                        debug err.stack
                        ctx.status = err.status || 510
                        ctx.body = message: err.message || '服务处理异常'
                    else if _.isError err
                        if err
                            ctx.status = isPost ? 422 : 412
                            ctx.body = message: err.message
                        else
                            debug '其它错误: %s', JSON.stringify(err)
                            debug err.stack
                            ctx.status = 510
                            ctx.body = message: '无法执行所需的请求'
                    else if _.isString err
                        # 通过promise.reject返回的错误内容
                        debug '服务处理异常: %s', JSON.stringify(err)
                        debug err.stack
                        ctx.status = 510
                        ctx.body = message: err
                    else
                        debug '服务处理异常: %s', JSON.stringify(err)
                        debug err.stack
                        ctx.status = 500
                        ctx.body = message: '服务处理异常'
                resolve()
