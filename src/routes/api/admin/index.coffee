Router require('koa-router')

router = Router()
router.get '/login', (ctx) ->
    new Promise (resolve, reject) ->
        resolve()

module.exports = router
