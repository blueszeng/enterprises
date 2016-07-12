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
                ctx.status = isPost ? 201 : 200
                if isAjax
                    ctx.body = status: true, data: data.data
                else
                    ctx.render data.template, data.data
                resolve()
            .catch (err) ->
                if _.isPlainObject err
                    debug '服务处理异常: %s', JSON.stringify(err)
                    debug err.stack
                    ctx.status = err.status || 510
                    if isAjax
                        ctx.body = message: err.message || '服务处理异常'
                    else
                        ctx.render 'error', {}
                else if _.isError err
                    if err
                        ctx.status = isPost ? 422 : 412
                        if isAjax
                            ctx.body = message: err.message
                        else
                            ctx.render 'error', {}
                    else
                        debug '其它错误: %s', JSON.stringify(err)
                        debug err.stack
                        ctx.status = 510
                        if isAjax
                            ctx.body = message: '无法执行所需的请求'
                        else
                            ctx.render 'error', {}
                else if _.isString err
                    # 明确通过promise.reject返回的错误内容
                    debug '服务处理异常: %s', JSON.stringify(err)
                    debug err.stack
                    ctx.status = 510
                    if isAjax
                        ctx.body = message: err
                    else
                        ctx.render 'error', {}
                else
                    debug '服务处理异常: %s', JSON.stringify(err)
                    debug err.stack
                    ctx.status = 500
                    if isAjax
                        ctx.body = message: '服务处理异常'
                    else
                        ctx.render 'error', {}
                resolve()
            







                







