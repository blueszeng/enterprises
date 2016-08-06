Router = require('koa-router')
wrapRoute = require('../../utils/wrapRoute')
productsService = require('../../services/products/products')
articlesService = require('../../services/articles/articles')
router = Router()

router.get '/product', wrapRoute (ctx) ->
    new Promise (resolve, reject) ->
        productsService.getProductsTypeMenuInfo()
        .then (productsTypeInfo) ->
            productsService.getRecommendProducts()
            .then (recommendProducts) ->
                productsService.getClickCountProducts()
                .then (clickProducts) ->
                    resolve
                        template: 'home/product'
                        data:
                            productsTypesList: productsTypeInfo
                            recommendProductsList: recommendProducts
                            clickProducts: clickProducts
                            menu:
                                product: 'active'

router.get '/getProducts', wrapRoute (ctx) ->
    new Promise (resolve, reject) ->
        console.log(ctx.query)
        productsTypeId = ctx.query.productsTypeId
        page = ctx.query.page
        productsService.getProductsByProductsType(productsTypeId, page)
        .then (products) ->
            resolve
                data:
                    products: products.productsList
                    count: products.productsCount

router.get '/clickProducts', wrapRoute (ctx) ->
    new Promise (resolve, reject) ->
        console.log 'zzzzzzzzzz', ctx.query.productsId
        productsId = ctx.query.productsId
        productsService.updateProductsClickCount(productsId)
        .then () ->
            resolve
                data: true

router.get '/article', wrapRoute (ctx) ->
    new Promise (resolve, reject) ->
        articlesService.getAllArticleTypeListandArticleTitle()
        .then (articleTypes) ->
            console.log articleTypes
            resolve
                template: 'home/article'
                data:
                    articleTypesListOne: articleTypes[0]
                    articleTypesListTwo: articleTypes[1]
                    menu:
                        article: 'active'


router.get '/articleDetail', wrapRoute (ctx) ->
    new Promise (resolve, reject) ->
        articlesId = ctx.query.articlesId
        articlesService.getArticleTitleOnArticlesType(articlesId)
        .then (article) ->
            productsService.getClickCountProducts()
            .then (clickProducts) ->
                articlesService.getClickCountArticles()
                    .then (clickArticles) ->
                        console.log article, articlesId
                        resolve
                            template: 'home/article_detail'
                            data:
                                article: article
                                clickProducts: clickProducts
                                clickArticles: clickArticles
                                menu:
                                    article: 'active'

router.get '/clickArticles', wrapRoute (ctx) ->
    new Promise (resolve, reject) ->
        articlesId = ctx.query.articlesId
        articlesService.updateArticlesClickCount(articlesId)
        .then () ->
            resolve
                data: true

router.get '/soma', wrapRoute (ctx) ->
    new Promise (resolve, reject) ->
        resolve
            template: 'home/soma'
            data:
                menu:
                    soma: 'active'

router.get '/soma_detail', wrapRoute (ctx) ->
    new Promise (resolve, reject) ->
        console.log ctx.query
        somaTypeId = ctx.query.somaTypeId
        console.log somaTypeId
        console.log "home/soma_detail_#{somaTypeId}"
        resolve
            template: "home/soma_detail_#{somaTypeId}"
            data:
                menu:
                    soma: 'active'


router.get '/about', wrapRoute (ctx) ->
    new Promise (resolve, reject) ->
        resolve
            template: 'home/about'

module.exports = router
