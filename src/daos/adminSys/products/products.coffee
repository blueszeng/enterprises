mysql = require('../../../stores/mysql')

module.exports.insertProducts = (productsInfo, connection = mysql) ->
    new Promise (resolve, reject) ->
        sql ="
        INSERT
            t_products
            (name, url, image, productsTypeId)
        VALUES
            (?,?,?)"
        connection.query sql, [productsInfo.name, productsInfo.url,
         productsInfo.image, productsInfo.productsTypeId]
        (err, ret) ->
            reject　'添加产品异常' if err
            resolve true

module.exports.updateProducts = (productsInfo, connection = mysql) ->
    new Promise (resolve, reject) ->
        sql ="
        UPDATE
            t_products
        SET
          name = ?, url = ?, image = ?, productsTypeId = ?
        VALUES
            (?,?,?,)
        WHERE
            id = ?"
        connection.query sql, [productsInfo.name, productsInfo.url,
         productsInfo.image, productsInfo.productsTypeId, productsInfo.id]
        (err, ret) ->
            reject　'更新产品分类异常' if err
            resolve true

module.exports.searchProductsByProductId = (productsId, connection = mysql) ->
    new Promise (resolve, reject) ->
        sql ="
        SELECT
            *
        FROM
            t_products
        WHERE
            id = ?"
        connection.query sql, [productsId]
        (err, ret) ->
            return reject　'通过产品ID查询产品异常' if err
            return resolve {} if ret.length <= 0
            return resolve ret[0]

module.exports.searchAllProducts = (connection = mysql) ->
    new Promise (resolve, reject) ->
        sql ="
        SELECT
            *
        FROM
          t_products"
        connection.query sql
        (err, ret) ->
            return reject　'查询所有产品异常' if err
            return resolve {} if ret.length <= 0
            return resolve ret[0]

module.exports.searchAllProductsBySecondType = (productsTypeId, connection = mysql) ->
    new Promise (resolve, reject) ->
        sql ="
        SELECT
            *
        FROM
            t_products
        WHERE
            productsTypeId = ?"
        connection.query sql, [productsTypeId]
        (err, ret) ->
            return reject　'通过产品ID查询产品异常' if err
            return resolve [] if ret.length <= 0
            return resolve ret

module.exports.delProductsbyId = (productsId, connection = mysql) ->
    new Promise (resolve, reject) ->
        sql ="
        DELETE FROM
            t_products
        WHERE
          id = ?"
        connection.query sql, [productsTypeId]
        (err, ret) ->
            reject　'删除产品异常' if err
            resolve true
