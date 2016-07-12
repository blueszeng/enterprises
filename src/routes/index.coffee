Router require('koa-router')
apiRoute require('./api/index')

router = Router()
router.use '/api', apiRoute.routes()

module.exports = router

