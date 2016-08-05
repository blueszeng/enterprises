Router = require('koa-router')
articleRoute = require('./article')
articletypeRoute = require('./articletype')
validate = require('../../middlewares/validate/index')

router = Router()
router.use validate()
router.use '/article', articleRoute.routes()
router.use '/articletype', articletypeRoute.routes()

module.exports = router
