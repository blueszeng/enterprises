module.exports =
() ->
    (ctx, next) ->
        new Promise (resolve) ->
            if ctx.session.user
                return next()
                .then () ->
                    resolve()
            console.log 'dddddddddddd'
            ctx.render '/admin/login'
            .then (data) ->
                ctx.body = data
                resolve()
