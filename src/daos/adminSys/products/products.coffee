mysql = require('../../../stores/mysql')

module.exports.insertProducts = (productsInfo, connection = mysql) ->
    new Promise (resolve, reject) ->
        sql ="
        INSERT
            t_products
            (name, linkImageUrl, imageUrl, productsTypeId)
        VALUES
            (?,?,?,?)"
        connection.query sql, [productsInfo.name, productsInfo.linkImageUrl,
         productsInfo.imageUrl, productsInfo.productsTypeId], (err, ret) ->
             reject　'添加产品异常' if err
             resolve true

module.exports.updateProducts = (productsInfo, connection = mysql) ->
    new Promise (resolve, reject) ->
        sql ="
        UPDATE
            t_products
        SET
          name = ?, linkImageUrl = ?, imageUrl = ?, productsTypeId = ?
        VALUES
            (?,?,?,?)
        WHERE
            id = ?"
        connection.query sql, [productsInfo.name, productsInfo.url,
         productsInfo.image, productsInfo.productsTypeId, productsInfo.id], (err, ret) ->
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
        connection.query sql, [productsId], (err, ret) ->
            return reject　'通过产品ID查询产品异常' if err
            return resolve {} if ret.length <= 0
            return resolve ret[0]

module.exports.searchAllProducts = (productsId, title, start = 0, limit = 15, connection = mysql) ->
    new Promise (resolve, reject) ->
        sql ="
        SELECT
            *
        FROM
          t_products"
        conditions = []
        if articleTypeId
            sql += " AND productsId = ?"
            conditions.push productsId
        if title
            sql += " AND title = ?"
            conditions.push title
        sql += " LIMIT ?, ?"
        conditions.push start
        conditions.push limit
        connection.query sql, (err, ret) ->
            return reject　'查询所有产品异常' if err
            return resolve {} if ret.length <= 0
            return resolve ret[0]

module.exports.searchProductsCount = (productsId, title, connection = mysql) ->
    new Promise (resolve, reject) ->
        sql ="
          SELECT
            count(1) as count
          FROM
             t_products
          WHERE 1=1"
        conditions = []
        if articleTypeId
            sql += " AND productsId = ?"
            conditions.push productsId
        if title
            sql += " AND title = ?"
            conditions.push title
        connection.query sql, (err, ret) ->
            return reject　'检索所有产品数量异常' if err
            return resolve 0 if ret.length <= 0
            return resolve ret[0].count

module.exports.searchAllProductsBySecondType = (productsTypeId, connection = mysql) ->
    new Promise (resolve, reject) ->
        sql ="
        SELECT
            *
        FROM
            t_products
        WHERE
            productsTypeId = ?"
        connection.query sql, [productsTypeId], (err, ret) ->
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
        connection.query sql, [productsTypeId], (err, ret) ->
            reject　'删除产品异常' if err
            resolve true
