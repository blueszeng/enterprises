Router = require('koa-router')
articleRoute = require('./article')
articletypeRoute = require('./articletype')
router = Router()
router.use '/article', articleRoute.routes()
router.use '/articletype', articletypeRoute.routes()

module.exports = router
