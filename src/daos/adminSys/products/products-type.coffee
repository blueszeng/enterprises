mysql = require('../../../stores/mysql')

module.exports.insertProductsType = (name, connection = mysql) ->
    new Promise (resolve, reject) ->
        sql ="
        INSERT
            t_products_type
            (name, parent)
        VALUES
            (?, ?)"
        connection.query sql, [name]
        (err, ret) ->
            reject　'添加产品分类异常' if err
            resolve true

module.exports.updateProductsType = (name, parent, productsTypeId, connection = mysql) ->
    new Promise (resolve, reject) ->
        sql ="
        UPDATE
            t_products_type
        SET
          name = ?, parent = ?
        VALUES
            (?, ? )
        WHERE
            id = ?"
        connection.query sql, [name, parent, productsTypeId]
        (err, ret) ->
            reject　'更新产品分类异常' if err
            resolve true

module.exports.searchAllProductsType = (connection = mysql) ->
    new Promise (resolve, reject) ->
        sql ="
        SELECT
            *
        FROM
            t_products_type"
        connection.query sql
        (err, ret) ->
            return reject　'查询所有分类异常' if err
            return resolve [] if ret.length <= 0
            return resolve ret

module.exports.searchProductsTypeById = (productsTypeId, connection = mysql) ->
    new Promise (resolve, reject) ->
        sql ="
        SELECT
            *
        FROM
            t_products_type
        WHERE
            parent = ?"
        connection.query sql, [productsTypeId]
        (err, ret) ->
            return reject　'通过parent查询所有分类异常' if err
            return resolve [] if ret.length <= 0
            return resolve ret

module.exports.searchFatherProductsType = (connection = mysql) ->
    new Promise (resolve, reject) ->
        sql ="
        SELECT
            *
        FROM
            t_products_type
        WHERE
            parent = 0"
        connection.query sql, [productsTypeId]
        (err, ret) ->
            return reject　'通过查询所有父级分类异常' if err
            return resolve [] if ret.length <= 0
            return resolve ret

module.exports.delProductsTypeById = (productsTypeId, connection = mysql) ->
    new Promise (resolve, reject) ->
        sql ="
        DELETE FROM
            t_products_type
        WHERE
          id = ?"
        connection.query sql, [productsTypeId]
        (err, ret) ->
            reject　'删除分类类型异常' if err
            resolve true
