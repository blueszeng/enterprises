Router = require('koa-router')
wrapRoute = require('../../utils/wrapRoute')
Joi = require('joi')
productsRoute = require('./article')
productstypeRoute = require('./articletype')

router = Router()
router.use '/products', productsRoute.routes()
router.use '/productsType', productstypeRoute.routes()

module.exports = router
