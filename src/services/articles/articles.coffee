articlesDao = require('../../daos/adminSys/articles/articles')
articlesTypeDao = require('../../daos/adminSys/articles/articles-type')

# 后台管理界面 文章API
module.exports.addArticle = (productsInfo) ->
    new Promise (resolve, reject) ->
        console.log productsInfo
        articlesDao.insertArticles(productsInfo)
        .then (ret) ->
            resolve ret
        .catch (err) ->
            reject err

module.exports.modifiedArticle = (productsInfo) ->
    new Promise (resolve, reject) ->
        articlesDao.updateArticles(productsInfo)
        .then (ret) ->
            resolve ret
        .catch (err) ->
            reject err

module.exports.removeArticle = (articlesId) ->
    new Promise (resolve, reject) ->
        articlesDao.delArticles(articlesId)
        .then (ret) ->
            resolve ret
        .catch (err) ->
            reject err


module.exports.getArticlesTypeIds = () ->
    new Promise (resolve, reject) ->
        articlesTypeDao.searchAllArticlesTypeIds()
        .then (articlesTypeIds) ->
            resolve articlesTypeIds
        .catch (err) ->
            reject err


module.exports.getAllArticle = (articleTypeId, title, page = 1) ->
    new Promise (resolve, reject) ->
        limit = 5
        start  = (page  - 1) * limit
        console.log 'start', start
        PromiseList = [
          articlesDao.searchAllArticles(articleTypeId, title, start, limit)
          articlesDao.searchArticlesCount(articleTypeId, title)
        ]
        Promise.all PromiseList
        .then (ret) ->
            console.log ret
            articles = {}
            articles.articlesList = ret[0]
            articles.count = ret[1]
            articles.page = page
            resolve articles
        .catch (err) ->
            reject err

module.exports.getAllArticlesType = (page = 1) ->
    new Promise (resolve, reject) ->
        limit = 5
        start  = (page  - 1) * limit
        console.log start
        PromiseList = [
          articlesTypeDao.searchAllArticlesType(start, limit)
          articlesTypeDao.searchArticlesTypeCount()
        ]
        Promise.all PromiseList
        .then (ret) ->
            articleTypes = {}
            articleTypes.articleTypeList = ret[0]
            articleTypes.count = ret[1]
            articleTypes.page = page
            resolve articleTypes
        .catch (err) ->
            reject err

# 后台管理界面 文章类型API
module.exports.addArticlesType = (articlesTypeInfo) ->
    new Promise (resolve, reject) ->
        articlesTypeDao.insertArticlesType(articlesTypeInfo)
        .then (ret) ->
            resolve ret
        .catch (err) ->
            console.log err
            reject err

module.exports.modifiedArticlesType = (articlesTypeInfo) ->
    new Promise (resolve, reject) ->
        articlesTypeDao.updateArticlesType(articlesTypeInfo)
        .then (ret) ->
            resolve ret
        .catch (err) ->
            reject err

module.exports.removeArticlesType = (articlesTypeId) ->
    new Promise (resolve, reject) ->
        articlesTypeDao.delArticlesType(articlesTypeId)
        .then (ret) ->
            resolve ret
        .catch (err) ->
            console.log err
            reject err


#  comom
module.exports.getArticle = (articlesId) ->
    new Promise (resolve, reject) ->
        articlesDao.searchArticlesByArticlesId(articlesId)
        .then (ret) ->
            resolve ret
        .catch (err) ->
            reject err

module.exports.getArticleType = (articlesTypeId) ->
    new Promise (resolve, reject) ->
        articlesTypeDao.searchArticlesTypeByArticlesId(articlesTypeId)
        .then (ret) ->
            resolve ret
        .catch (err) ->
            reject err

#  前端调用 api
module.exports.getArticleTitleOnArticlesType = (articlesId) ->
    new Promise (resolve, reject) ->
        articlesDao.searchArticlesByArticlesId(articlesId)
        .then (article) ->
            resolve article
        .catch (err) ->
            reject err

module.exports.getAllArticleTypeListandArticleTitle = () ->
    new Promise (resolve, reject) ->
        articlesTypeDao.searchAllArticlesType()
        .then (articlesTypes) ->
            artictlesType [] if articlesTypes.length < 0
            PromiseList = []
            artictlesTypeList = [[],[]]
            articlesTypes.forEach (articlesType) ->
                PromiseList.push articlesDao.searchArticlesByArticlesTypeId(articlesType.id)
            Promise.all PromiseList
            .then (articles) ->
                articles.forEach (article, index) ->
                    articlesTypes[index].article = article
                    if index % 2 == 0
                        artictlesTypeList[0].push articlesTypes[index]
                    else
                        artictlesTypeList[1].push articlesTypes[index]
                console.log artictlesTypeList
                resolve artictlesTypeList

module.exports.getClickCountArticles = () ->
    new Promise (resolve, reject) ->
        articlesDao.searchClickCountArticles()
        .then (products) ->
            resolve products
        .catch (err) ->
            reject err

module.exports.updateArticlesClickCount = (articlesId) ->
    new Promise (resolve, reject) ->
        articlesDao.searchArticlesByArticlesId(articlesId)
        .then (articles) ->
            articlesDao.updateArticlesClickCount(articlesId, articles.click)
            .then () ->
                resolve true
        .catch (err) ->
            reject err
