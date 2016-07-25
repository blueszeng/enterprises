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

module.exports.addProductsType = (name) ->
    new Promise (resolve, reject) ->
        productsDao.insertProducts(name)
        .then (ret) ->
            resolve ret
        .catch (err) ->
            reject err


module.exports.removeProducts = (productsTypeId, name) ->
    new Promise (resolve, reject) ->
        productsTypeDao.insertProductsSecondType(productsTypeId, name)
        .then (ret) ->
            resolve ret
        .catch (err) ->
            reject err

module.exports.removeProductsType = (productsSecondTypeId) ->
    new Promise (resolve, reject) ->
        productsTypeDao.delProductsTypeById(productsSecondTypeId)
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

module.exports.modifiedProductsName = (name, productsTypeId) ->
    new Promise (resolve, reject) ->
        productsDao.updateProductsType(productsInfo)
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
