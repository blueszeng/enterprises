Router = require('koa-router')
wrapRoute = require('../../utils/wrapRoute')
Joi = require('joi')
productsService = require('../../services/products/products')
router = Router()

router.get '/add', wrapRoute (ctx) ->
    new Promise (resolve, reject) ->
        resolve
            template: 'products/add-productstype'

router.post '/add', wrapRoute (ctx) ->
    new Promise (resolve, reject) ->
        productsTypeInfo = ctx.request.body
        productsService.addProductsType(productsTypeInfo)
        .then (productsType) ->
            resolve
                url: '/products/productstype'
                redirect: true

router.get '/', wrapRoute (ctx) ->
    new Promise (resolve, reject) ->
        query = ctx.query
        console.log query, query.page
        productsService.getAllProductsType(query.page)
        .then (productsTypes) ->
            console.log productsTypes
            resolve
                template: 'products/productstype'
                data: productsTypes: productsTypes
                menu:
                    products: true

router.get '/del/:articleTypeId', wrapRoute (ctx) ->
    new Promise (resolve, reject) ->
        productsTypeId = ctx.params.productsTypeId
        productsService.removeProductsType(articleTypeId)
        .then () ->
            resolve
                url: '/products/productstype'
                redirect: true

router.get '/edit/:articleTypeId', wrapRoute (ctx) ->
    new Promise (resolve, reject) ->
        productsTypeId = ctx.params.productsTypeId
        console.log productsTypeId
        productsService.getProductsType(productsTypeId)
        .then (productsType)->
            console.log productsType
            resolve
                template: 'products/edit-productstype'
                data:  productsType: productsType

router.post '/edit', wrapRoute (ctx) ->
    new Promise (resolve, reject) ->
        productsTypeInfo = ctx.request.body
        productsService.modifiedProductsType(productsTypeInfo)
        .then (productsType) ->
            resolve
                url: '/products/productstype'
                redirect: true

module.exports = router
