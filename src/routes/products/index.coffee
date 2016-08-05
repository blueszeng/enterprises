Router = require('koa-router')
wrapRoute = require('../../utils/wrapRoute')
Joi = require('joi')
productsRoute = require('./products')
productstypeRoute = require('./productstype')
validate = require('../../middlewares/validate/index')
router = Router()
router.use validate()
router.use '/products', productsRoute.routes()
router.use '/productstype', productstypeRoute.routes()

module.exports = router
