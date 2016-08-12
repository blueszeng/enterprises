Router = require('koa-router')
wrapRoute = require('../../utils/wrapRoute')
Joi = require('joi')
productsService = require('../../services/products/products')
router = Router()

router.get '/add', wrapRoute (ctx) ->
    new Promise (resolve, reject) ->
        productsService.getProductsTypeName()
        .then (productsTypeName) ->
            resolve
                template: 'product/add-product'
                data:
                    productsTypeName: productsTypeName
                    menu:
                        products: "active"

router.post '/add', wrapRoute (ctx) ->
    new Promise (resolve, reject) ->
        productsInfo = ctx.request.body
        console.log('ggggg', productsInfo)
        productsService.addProducts(productsInfo)
        .then () ->
            resolve
                url: '/products/products'
                redirect: true

router.get '/', wrapRoute (ctx) ->
    new Promise (resolve, reject) ->
        query = ctx.query
        productsService.getProductsTypeName()
        .then (productsTypeName) ->
            productsService.getAllProducts(query.productsTypeId, query.name, query.page)
            .then (products) ->
                console.log products
                resolve
                    template: 'product/product'
                    data:
                        products: products
                        productsTypeName: productsTypeName
                        productsTypeId: query.productsTypeId
                        productsName: query.name
                        menu:
                            products: "active"

router.get '/del/:productsId', wrapRoute (ctx) ->
    new Promise (resolve, reject) ->

        productsId = ctx.params.productsId
        console.log 'delllllllllll', productsId
        productsService.removeProducts(productsId)
        .then () ->
            resolve
                url: '/products/products'
                redirect: true

router.get '/edit/:productsId', wrapRoute (ctx) ->
    new Promise (resolve, reject) ->
        productsId = ctx.params.productsId
        productsService.getProducts(productsId)
        .then (products)->
            console.log 333, products
            productsService.getProductsTypeName()
            .then (productsTypeName) ->
                console.log 44, productsTypeName
                resolve
                    template: 'product/edit-product'
                    data:
                        products: products
                        productsTypeName: productsTypeName
                        menu:
                            products: "active"
        .catch (err) ->
            console.log err

router.post '/edit', wrapRoute (ctx) ->
    new Promise (resolve, reject) ->
        productsInfo = ctx.request.body
        productsService.modifiedProducts(productsInfo)
        .then (products) ->
            resolve
                url: '/products/products'
                redirect: true

module.exports = router
