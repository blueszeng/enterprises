Router = require('koa-router')
wrapRoute = require('../../utils/wrapRoute')
Joi = require('joi')
productsService = require('../../services/products/products')
router = Router()

router.get '/add', wrapRoute (ctx) ->
    new Promise (resolve, reject) ->
        resolve
            template: 'products/add-products'

router.post '/add', wrapRoute (ctx) ->
    new Promise (resolve, reject) ->
        productsInfo = ctx.request.body
        productsService.addProducts(productsInfo)
        .then () ->
            resolve
                url: '/products/products'
                redirect: true

router.get '/', wrapRoute (ctx) ->
    new Promise (resolve, reject) ->
        query = ctx.query
        console.log query, query.page
        productsService.getAllProducts(query.page)
        .then (products) ->
            console.log products
            resolve
                template: 'products/products'
                data: products: products
                menu:
                    products: true

router.get '/del/:productsId', wrapRoute (ctx) ->
    new Promise (resolve, reject) ->
        productsId = ctx.params.productsId
        productsService.removeProducts(productsId)
        .then () ->
            resolve
                url: '/products/products'
                redirect: true

router.get '/edit/:productsId', wrapRoute (ctx) ->
    new Promise (resolve, reject) ->
        productsId = ctx.params.productsId
        console.log productsId
        productsService.getProducts(productsId)
        .then (products)->
            console.log products
            resolve
                template: 'products/edit-products'
                data:  products: products

router.post '/edit', wrapRoute (ctx) ->
    new Promise (resolve, reject) ->
        productsInfo = ctx.request.body
        productsService.modifiedProducts(productsInfo)
        .then (products) ->
            resolve
                url: '/products/products'
                redirect: true

module.exports = router
