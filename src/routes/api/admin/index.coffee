Router = require('koa-router')
wrapRoute = require('../../../utils/wrapRoute')

router = Router()
router.get '/login', wrapRoute (ctx) ->
    new Promise (resolve, reject) ->
        resolve
            template: '/admin/login'
            data: {}

module.exports = router
