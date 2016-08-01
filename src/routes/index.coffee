Router = require('koa-router')
router = Router()
adminRoute = require('./adminSys/index')
articlesRoute = require('./articles/index')
leaveMessageRoute = require('./leaveMessage/index')
productsRoute = require('./products/index')
wrapRoute = require('../utils/wrapRoute')
imageRoute = require('./image/index')
router.use '/image', imageRoute.routes()
router.use '/adminSys', adminRoute.routes()
router.use '/articles', articlesRoute.routes()
router.use '/leaveMessage', leaveMessageRoute.routes()
router.use '/products', productsRoute.routes()

# home route api
router.get '/', wrapRoute (ctx) ->
    new Promise (resolve, reject) ->
        resolve
            template: 'index'
            data: title: '主页'

module.exports = router
