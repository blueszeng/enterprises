productsDao = require('../../../daos/adminSys/products/products')
productsTypeDao = require('../../../daos/adminSys/products/products-type')


# 后台管理界面 产品API
module.exports.addProducts = (productsInfo) ->
    new Promise (resolve, reject) ->
        productsDao.insertProducts(productsInfo)
        .then (ret) ->
            resolve ret
        .catch (err) ->
            reject err

module.exports.addProductsType = (productsTypeInfo) ->
    new Promise (resolve, reject) ->
        productsDao.insertProductsType(productsTypeInfo)
        .then (ret) ->
            resolve ret
        .catch (err) ->
            reject err

module.exports.removeProducts = (productsId, name) ->
    new Promise (resolve, reject) ->
        productsDao.delProductsById(productsId, name)
        .then (ret) ->
            resolve ret
        .catch (err) ->
            reject err

module.exports.removeProductsType = (productsTypeId) ->
    new Promise (resolve, reject) ->
        productsTypeDao.delProductsTypeById(productsTypeId)
        .then (ret) ->
            resolve ret
        .catch (err) ->
            reject err

module.exports.getAllProducts = () ->
    new Promise (resolve, reject) ->
        productsDao.searchAllProducts()
        .then (ret) ->
            resolve ret
        .catch (err) ->
            reject err

module.exports.getAllProductsType = (page = 1) ->
    new Promise (resolve, reject) ->
        limit = 5
        start  = (page  - 1) * limit
        console.log start
        PromiseList = [
          productsTypeDao.searchAllProductsType(start, limit)
          productsTypeDao.searchProductsTypeCount()
        ]
        Promise.all PromiseList
        .then (ret) ->
            productsTypes = {}
            productsTypes.productsTypeList = ret[0]
            productsTypes.count = ret[1]
            productsTypes.page = page
            resolve productsTypes
        .catch (err) ->
            reject err

module.exports.getAllProducts = (articleTypeId, title, page = 1) ->
    new Promise (resolve, reject) ->
        limit = 5
        start  = (page  - 1) * limit
        console.log start
        PromiseList = [
          productsTypeDao.searchAllProducts(articleTypeId, title, limit, start)
          productsTypeDao.searchProductsCount(articleTypeId, title)
        ]
        Promise.all PromiseList
        .then (ret) ->
            products = {}
            products.productsList = ret[0]
            products.count = ret[1]
            products.page = page
            resolve products
        .catch (err) ->
            reject err

module.exports.getProductsType = (productsTypeId) ->
    new Promise (resolve, reject) ->
        productsTypeDao.searchProductsType(productsTypeId)
        .then (ret) ->
            resolve ret
        .catch (err) ->
            reject err

module.exports.getProducts = (productsId) ->
    new Promise (resolve, reject) ->
        productsDao.searchAllProducts(productsId)
        .then (ret) ->
            resolve ret
        .catch (err) ->
            reject err

module.exports.modifiedProducts = (productsInfo) ->
    new Promise (resolve, reject) ->
        productsDao.updateProducts(productsInfo)
        .then (ret) ->
            resolve ret
        .catch (err) ->
            reject err

module.exports.modifiedProductsType = (productsTypeInfo) ->
    new Promise (resolve, reject) ->
        productsDao.updateProductsType(productsTypeInfo)
        .then (ret) ->
            resolve ret
        .catch (err) ->
            reject err

module.exports.modifiedProductsSecondTypeName = (name, productsInfo, productsSecondTypeId) ->
    new Promise (resolve, reject) ->
        productsDao.updateProductsSecondType(name, productsInfo, productsSecondTypeId)
        .then (ret) ->
            resolve ret
        .catch (err) ->
            reject err


# 前端显示页API 产品接口

getleafTypesByProductsType = (productsTypeId) ->
    new Promise (resolve, reject) ->
        leafTypesId = []
        productsTypeDao.searchProductsTypeById(productsTypeId)
        .then (productsTypes) ->
            resolve productsTypes
        .catch (err) ->
            reject err

module.exports.getProductsByProductsType = (productsTypeId) ->
    new Promise (resolve, reject) ->
        getleafTypesByProductsType(productsTypeId)
        .then (productsTypes) ->
            if productsTypes.length <= 0
                productsTypes.push id: productsTypeId
            productsTypes.forEach (productsType) ->
                productsTypePromises.push productsTypeDao.searchProductsByProductId(productsType.id)
            Promise.all productsTypePromises
            .then (ret) ->
                productsList = []
                ret.forEach (products) ->
                    productsList.concat products
                resolve productsList
        .catch (err) ->
            reject err

module.exports.getProductsFatherType = () ->
    new Promise (resolve, reject) ->
        productsTypeDao.searchFatherProductsType()
        .then (productsTypes) ->
            resolve [] if productsTypes.length <= 0
            resolve ret
        .catch (err) ->
            reject err
