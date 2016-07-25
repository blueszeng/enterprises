mysql = require('../../../stores/mysql')

module.exports.insertProductsType = (productsTypeInfo, connection = mysql) ->
    new Promise (resolve, reject) ->
        sql ="
        INSERT
            t_products_type
            (name, parent)
        VALUES
            (?, ?)"
        connection.query sql, [productsTypeInfo.name, productsTypeInfo.parent], (err, ret) ->
            reject　'添加产品分类异常' if err
            resolve true

module.exports.updateProductsType = (productsTypeInfo, connection = mysql) ->
    new Promise (resolve, reject) ->
        sql ="
        UPDATE
            t_products_type
        SET
          name = ?, parent = ?
        VALUES
            (?, ?)
        WHERE
            id = ?"
        connection.query sql, [productsTypeInfo.name, productsTypeInfo.parent, productsTypeInfo.id], (err, ret) ->
            reject　'更新产品分类异常' if err
            resolve true

module.exports.searchAllProductsType = (start = 0, limit = 15, connection = mysql) ->
    new Promise (resolve, reject) ->
        sql ="
        SELECT
            *
        FROM
            t_products_type
        LIMIT ?, ?"
        connection.query sql, (err, ret) ->
            return reject　'查询所有分类异常' if err
            return resolve [] if ret.length <= 0
            return resolve ret

module.exports.searchProductsType = (productsTypeId, connection = mysql) ->
    new Promise (resolve, reject) ->
        sql ="
        SELECT
            *
        FROM
            t_products_type
        WHERE
            id = ?"
        connection.query sql, [productsTypeId], (err, ret) ->
            return reject　'通过productsTypeId查询分类异常' if err
            return resolve {} if ret.length <= 0
            return resolve ret[0]


module.exports.searchAllProductsType = (start = 0, limit = 15, connection = mysql) ->
    new Promise (resolve, reject) ->
        sql ="
          SELECT
            *
          FROM
             t_products_type
          LIMIT ?, ?"
        connection.query sql, [start, limit], (err, ret) ->
            console.log err
            return reject　'检索所有产品类型异常' if err
            return resolve [] if ret.length <= 0
            return resolve ret

module.exports.searchAllProductsTypeName = (connection = mysql) ->
    new Promise (resolve, reject) ->
        sql ="
          SELECT
            id, name
          FROM
             t_products_types
        "
        console.log sql
        connection.query sql, (err, ret) ->
            return reject　'检索所有产品类型异常' if err
            return resolve [] if ret.length <= 0
            return resolve ret

module.exports.searchProductsTypeCount = (connection = mysql) ->
    new Promise (resolve, reject) ->
        sql ="
          SELECT
            count(1) as count
          FROM
             t_products_type"
        connection.query sql, (err, ret) ->
            return reject　'检索所有文章类型数量异常' if err
            return resolve 0 if ret.length <= 0
            return resolve ret[0].count

module.exports.searchFatherProductsType = (connection = mysql) ->
    new Promise (resolve, reject) ->
        sql ="
        SELECT
            *
        FROM
            t_products_type
        WHERE
            parent = 0"
        connection.query sql, [productsTypeId], (err, ret) ->
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
        connection.query sql, [productsTypeId], (err, ret) ->
            reject　'删除分类类型异常' if err
            resolve true
