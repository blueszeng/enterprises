Router = require('koa-router')
adminRoute = require('./admin/index')

router = Router()
router.use '/admin', adminRoute.routes()

module.exports = router
