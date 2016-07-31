Router = require('koa-router')
wrapRoute = require('../../utils/wrapRoute')
Joi = require('joi')
productsService = require('../../services/products/products')
router = Router()

router.get '/add', wrapRoute (ctx) ->
    new Promise (resolve, reject) ->
        console.log '123123'
        productsService.getProductsTypeName()
        .then (productsTypes) ->
            console.log productsTypes
            resolve
                template: 'product/add-productstype'
                data:
                    productsTypes: productsTypes
                    menu:
                        productsType: "active"

router.post '/add', wrapRoute (ctx) ->
    new Promise (resolve, reject) ->
        productsTypeInfo = ctx.request.body
        console.log ctx.request.body,'bbbbbb'
        productsService.addProductsType(productsTypeInfo)
        .then (productsType) ->
            resolve
                url: '/products/productstype'
                redirect: true
        .catch (err) ->
            console.log 'err', err

router.get '/', wrapRoute (ctx) ->
    new Promise (resolve, reject) ->
        query = ctx.query
        productsService.getAllProductsType(query.page)
        .then (productsTypes) ->
            console.log productsTypes,'ttttsss'
            resolve
                template: 'product/productstype'
                data:
                    productsTypes: productsTypes
                    menu:
                        productsType: "active"

router.get '/del/:productsTypeId', wrapRoute (ctx) ->
    new Promise (resolve, reject) ->
        productsTypeId = ctx.params.productsTypeId
        console.log productsTypeId, 'cccccccccc'
        productsService.removeProductsType(productsTypeId)
        .then () ->
            resolve
                url: '/products/productstype'
                redirect: true

router.get '/edit/:productsTypeId', wrapRoute (ctx) ->
    new Promise (resolve, reject) ->
        productsTypeId = ctx.params.productsTypeId
        console.log productsTypeId
        productsService.getProductsType(productsTypeId)
        .then (productsType)->
            productsService.getProductsTypeName()
            .then (productsTypeNames) ->
                resolve
                    template: 'product/edit-productstype'
                    data:
                        productsType: productsType
                        productsTypeNames: productsTypeNames

router.post '/edit', wrapRoute (ctx) ->
    new Promise (resolve, reject) ->
        productsTypeInfo = ctx.request.body
        productsService.modifiedProductsType(productsTypeInfo)
        .then (productsType) ->
            resolve
                url: '/products/productstype'
                redirect: true

module.exports = router
