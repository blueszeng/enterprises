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

router.get '/articleDetail', wrapRoute (ctx) ->
    new Promise (resolve, reject) ->
        articlesId = ctx.query.articlesId
        articlesService.getArticleTitleOnArticlesType(articlesId)
        .then (article) ->
            console.log article, articlesId
            resolve
                template: 'home/article_detail'
                data:
                    article: article

module.exports = router
