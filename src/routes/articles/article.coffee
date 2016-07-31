Router = require('koa-router')
wrapRoute = require('../../utils/wrapRoute')
Joi = require('joi')
articlesService = require('../../services/articles/articles')
router = Router()

router.get '/add', wrapRoute (ctx) ->
    new Promise (resolve, reject) ->
        articlesService.getArticlesTypeIds()
        .then (articlesTypeIds) ->
            resolve
                template: 'articles/add-article'
                data:
                    articlesTypeIds: articlesTypeIds
                    menu:
                        article: 'active'

router.post '/add', wrapRoute (ctx) ->
    new Promise (resolve, reject) ->
        articlesTypeInfo = ctx.request.body
        console.log articlesTypeInfo, 2342342
        articlesService.addArticle(articlesTypeInfo)
        .then (articlesType) ->
            resolve
                url: '/articles/article'
                redirect: true

router.get '/', wrapRoute (ctx) ->
    new Promise (resolve, reject) ->
        query = ctx.query
        console.log query, query.page
        articlesService.getAllArticle(query.articlesTypeId, query.title, query.page)
        .then (articles) ->
            articlesService.getArticlesTypeIds()
            .then (articlesTypeIds) ->
                resolve
                    template: 'articles/article'
                    data:
                        articles: articles
                        articlesTypeIds: articlesTypeIds
                        articlesTypeId: query.articlesTypeId
                        title: query.title
                        menu:
                            article: 'active'

router.get '/del/:articleTypeId', wrapRoute (ctx) ->
    new Promise (resolve, reject) ->
        articleTypeId = ctx.params.articleTypeId
        articlesService.removeArticle(articleTypeId)
        .then () ->
            resolve
                url: '/articles/article'
                redirect: true

router.get '/edit/:articleTypeId', wrapRoute (ctx) ->
    new Promise (resolve, reject) ->
        articleTypeId = ctx.params.articleTypeId
        console.log articleTypeId
        articlesService.getArticlesTypeIds()
        .then (articlesTypeIds) ->
            articlesService.getArticle(articleTypeId)
            .then (article) ->
                console.log articlesTypeIds, article
                resolve
                    template: 'articles/edit-article'
                    data:
                        articlesTypeIds: articlesTypeIds
                        article: article

router.post '/edit', wrapRoute (ctx) ->
    new Promise (resolve, reject) ->
        articlesTypeInfo = ctx.request.body
        console.log articlesTypeInfo
        articlesService.modifiedArticle(articlesTypeInfo)
        .then () ->
            resolve
                url: '/articles/article'
                redirect: true



module.exports = router
