Router = require('koa-router')
router = Router()
adminRoute = require('./adminSys/index')
articlesRoute = require('./articles/index')
leaveMessageRoute = require('./leaveMessage/index')
productsRoute = require('./products/index')
wrapRoute = require('../utils/wrapRoute')
imageRoute = require('./image/index')
homeRoute = require('./home/index')
router.use '/image', imageRoute.routes()
router.use '/adminSys', adminRoute.routes()
router.use '/articles', articlesRoute.routes()
router.use '/leaveMessage', leaveMessageRoute.routes()
router.use '/products', productsRoute.routes()
router.use '/home', homeRoute.routes()
# home route api
router.get '/', wrapRoute (ctx) ->
    new Promise (resolve, reject) ->
        resolve
            template: 'index'
            data: title: '主页'

router.get '/login', wrapRoute (ctx) ->
    new Promise (resolve, reject) ->
        resolve
            url: '/adminSys/admin/login'
            redirect: true



module.exports = router
