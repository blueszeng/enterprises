Router = require('koa-router')
apiRoute = require('./api/index')
router = Router()
wrapRoute = require('../utils/wrapRoute')

router.use '/api', apiRoute.routes()

# home route api
router.get '/', wrapRoute (ctx) ->
    new Promise (resolve, reject) ->
        resolve
            template: 'index'
module.exports = router
