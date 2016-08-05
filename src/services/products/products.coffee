productsDao = require('../../daos/adminSys/products/products')
productsTypeDao = require('../../daos/adminSys/products/products-type')


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
        productsTypeDao.insertProductsType(productsTypeInfo)
        .then (ret) ->
            resolve ret
        .catch (err) ->
            reject err

module.exports.removeProducts = (productsId) ->
    new Promise (resolve, reject) ->
        console.log 'gggggggggggg',productsDao.delProductsbyId
        productsDao.delProductsbyId(productsId)
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
        console.log start,'sbsbs'
        PromiseList = [
          productsTypeDao.searchAllProductsType(start, limit)
          productsTypeDao.searchProductsTypeCount()
        ]
        Promise.all PromiseList
        .then (ret) ->
            console.log ret
            productsTypes = {}
            productsTypes.productsTypeList = ret[0]
            productsTypes.count = ret[1]
            productsTypes.page = page
            resolve productsTypes
        .catch (err) ->
            reject err

module.exports.getAllProducts = (productsTypeId, name, page = 1) ->
    new Promise (resolve, reject) ->
        limit = 5
        start  = (page  - 1) * limit
        console.log productsTypeId, name
        PromiseList = [
          productsDao.searchAllProducts(productsTypeId, name, start, limit)
          productsDao.searchProductsCount(productsTypeId, name)
        ]
        Promise.all PromiseList
        .then (ret) ->
            # console.log ret
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

module.exports.getProductsTypeName = (productsTypeId) ->
    new Promise (resolve, reject) ->
        productsTypeDao.searchAllProductsTypeName()
        .then (ret) ->
            ret.splice(0, 0, {id: 0, name:'顶级'})
            resolve ret
        .catch (err) ->
            reject err


module.exports.getProducts = (productsId) ->
    new Promise (resolve, reject) ->
        productsDao.searchProductsByProductId(productsId)
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

module.exports.getParentId = (parentName) ->
    new Promise (resolve, reject) ->
        productsTypeDao.searchParentIdByName(parentName)
        .then (ret) ->
            resolve ret
        .catch (err) ->
            reject err

module.exports.modifiedProductsType = (productsTypeInfo) ->
    new Promise (resolve, reject) ->
        console.log 'yy',productsTypeInfo
        productsTypeDao.updateProductsType(productsTypeInfo)
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


module.exports.getProductsByProductsType = (productsTypeId, page = 1) ->
    new Promise (resolve, reject) ->
        limit = 6
        start  = (page  - 1) * limit
        productsTypeDao.searchProductsTypeByParentId(productsTypeId)
        .then (productsTypes) ->
            if productsTypes.length <= 0
                productsTypes.push id: productsTypeId
            productsTypePromises = []
            productsTypes.forEach (productsType) ->
                productsTypePromises.push productsDao.searchProductsByProductTypeId(productsType.id)
            Promise.all productsTypePromises
            .then (ret) ->
                productsList = []
                ret.forEach (products) ->
                    productsList =  productsList.concat products
                count = productsList.length
                resolve
                    productsList: productsList.splice(start, limit)
                    productsCount: count
        .catch (err) ->
            reject err

getProductsTypeByTopParentId = (parentId) ->
    new Promise (resolve, reject) ->
        productsTypeDao.searchProductsTypeByParentId(parentId)
        .then (productsTypes) ->
            resolve productsTypes
        .catch (err) ->
            console.log err
            reject err

getProductsGroupByIdCount = () ->
    new Promise (resolve, reject) ->
        productsDao.searchProductsNumberCount()
        .then (productCountList) ->
            productCountMap = {}
            productCountList.forEach (product) ->
                productCountValue = productCountMap[product.parent]
                productCountMap[product.parent] = if productCountValue then productCountValue else 0
                productCountMap[product.parent] += product.count
            productCountList.forEach (product) ->
                productCountMap[product.productsTypeId] = product.count
            resolve productCountMap
        .catch (err) ->
            reject err

module.exports.getProductsTypeMenuInfo = () ->
    new Promise (resolve, reject) ->
        getProductsGroupByIdCount()
        .then (groupTypeCounts) ->
            productsTypeDao.searchTopParentProductsType()
            .then (parentTypes) ->
                promiseList = []
                productsTypeInfo = []
                parentTypes.forEach (parentType) ->
                    parentType.count = groupTypeCounts[parentType.id]
                    promiseList.push getProductsTypeByTopParentId(parentType.id)
                Promise.all(promiseList).then (productsTypeRet) ->
                    productsTypeRet.forEach (productsType, index) ->
                        productsType.forEach (productType) ->
                            productType.count = groupTypeCounts[productType.id]
                        productsTypeInfo[index] = {}
                        productsTypeInfo[index].parentProductType = parentTypes[index]
                        productsTypeInfo[index].childProductType = productsType
                        console.log productsType
                    resolve productsTypeInfo
        .catch (err) ->
            console.log err
            reject err

module.exports.getRecommendProducts = (page = 2) ->
    new Promise (resolve, reject) ->
        productsDao.searchRecommendProducts()
        .then (products) ->
            productsList = []
            for index in [0...page]
                productsl = {}
                productsl.product = []
                lengthList = [0...4]
                for _, indexj in lengthList
                    productsl.product.push products[index * 4 + indexj]
                productsList.push productsl
            resolve productsList
        .catch (err) ->
            reject err

module.exports.getClickCountProducts = () ->
    new Promise (resolve, reject) ->
        productsDao.searchClickCountProducts()
        .then (products) ->
            resolve products
        .catch (err) ->
            reject err
