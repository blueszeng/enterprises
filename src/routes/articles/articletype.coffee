Router = require('koa-router')
wrapRoute = require('../../utils/wrapRoute')
Joi = require('joi')
articlesService = require('../../services/articles/articles')
router = Router()

router.get '/add', wrapRoute (ctx) ->
    new Promise (resolve, reject) ->
        resolve
            template: 'articles/add-articletype'

router.post '/add', wrapRoute (ctx) ->
    new Promise (resolve, reject) ->
        articlesTypeInfo = ctx.request.body
        articlesService.addArticlesType(articlesTypeInfo)
        .then (articlesType) ->
            resolve
                url: '/articles/articletype'
                redirect: true

router.get '/', wrapRoute (ctx) ->
    new Promise (resolve, reject) ->
        query = ctx.query
        console.log query, query.page
        articlesService.getAllArticlesType(query.page)
        .then (articlesTypes) ->
            console.log articlesTypes
            resolve
                template: 'articles/articletype'
                data: articlesTypes: articlesTypes
                menu:
                    article: true

router.get '/del/:articleTypeId', wrapRoute (ctx) ->
    new Promise (resolve, reject) ->
        articleTypeId = ctx.params.articleTypeId
        articlesService.removeArticlesType(articleTypeId)
        .then () ->
            resolve
                url: '/articles/articletype'
                redirect: true

router.get '/edit/:articleTypeId', wrapRoute (ctx) ->
    new Promise (resolve, reject) ->
        articleTypeId = ctx.params.articleTypeId
        console.log articleTypeId
        articlesService.getArticleType(articleTypeId)
        .then (articlesType)->
            console.log articlesType
            resolve
                template: 'articles/edit-articletype'
                data:  articlesType: articlesType

router.post '/edit', wrapRoute (ctx) ->
    new Promise (resolve, reject) ->
        articlesTypeInfo = ctx.request.body
        articlesService.modifiedArticlesType(articlesTypeInfo)
        .then (articlesType) ->
            resolve
                url: '/articles/articletype'
                redirect: true

module.exports = router
