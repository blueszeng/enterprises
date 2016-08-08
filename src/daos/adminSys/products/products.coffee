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
          name = ?, linkImageUrl = ?, imageUrl = ?, productsTypeId = ?, isRecommend =?
        WHERE
            id = ?"
        console.log sql, productsInfo
        connection.query sql, [productsInfo.name, productsInfo.linkImageUrl,
         productsInfo.imageUrl, productsInfo.productsTypeId, productsInfo.isRecommend, productsInfo.id], (err, ret) ->
             console.log err
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

module.exports.searchAllProducts = (productsTypeId, name, start = 0, limit = 15, connection = mysql) ->
    new Promise (resolve, reject) ->
        sql ="
          SELECT
            *
          FROM
             t_products
          WHERE
            1=1"
        conditions = []
        if productsTypeId
            sql += " AND productsTypeId = ?"
            conditions.push productsTypeId
        if name
            sql += " AND name = ?"
            conditions.push name
        sql += " LIMIT ?, ?"
        conditions.push start
        conditions.push limit
        console.log sql, conditions
        connection.query sql, conditions, (err, ret) ->
            console.log err, ret
            return reject　'查询所有产品异常' if err
            return resolve [] if ret.length <= 0
            return resolve ret

module.exports.searchProductsCount = (productsTypeId, name, connection = mysql) ->
    new Promise (resolve, reject) ->
        sql ="
          SELECT
            count(1) as count
          FROM
             t_products
          WHERE 1=1"
        conditions = []
        if productsTypeId
            sql += " AND productsTypeId = ?"
            conditions.push productsTypeId
        if name
            sql += " AND name = ?"
            conditions.push name
        connection.query sql, conditions, (err, ret) ->
            console.log err, sql
            return reject　'检索所有产品数量异常' if err
            return resolve 0 if ret.length <= 0
            return resolve ret[0].count

module.exports.delProductsbyId = (productsId, connection = mysql) ->
    new Promise (resolve, reject) ->
        sql ="
        DELETE FROM
            t_products
        WHERE
          id = ?"
        connection.query sql, [productsId], (err, ret) ->
            console.log err
            reject　'删除产品异常' if err
            resolve true

module.exports.searchProductsNumberCount = (connection = mysql) ->
    new Promise (resolve, reject) ->
        sql ="
          SELECT productsTypeId, count(productsTypeId) as count, parent
          FROM t_products
          JOIN t_products_type
          ON t_products.productsTypeId = t_products_type.id
          GROUP BY productsTypeId"
        connection.query sql, (err, ret) ->
            console.log err
            reject　'查询产品数量异常' if err
            resolve [] if ret.length < 0
            resolve ret

module.exports.searchRecommendProducts = (connection = mysql) ->
    new Promise (resolve, reject) ->
        sql ="
          SELECT
          	*
          FROM
          	t_products
          ORDER BY
          	isRecommend desc
          LIMIT 8"
        connection.query sql, (err, ret) ->
            console.log err
            reject　'查询推荐产品数量异常' if err
            resolve [] if ret.length < 0
            resolve ret

module.exports.searchClickCountProducts = (connection = mysql) ->
    new Promise (resolve, reject) ->
        sql ="
          SELECT
          	*
          FROM
          	t_products
          ORDER BY
          	click desc
          LIMIT 3"
        connection.query sql, (err, ret) ->
            console.log err
            reject　'查询点击产品数量异常' if err
            resolve [] if ret.length < 0
            resolve ret

module.exports.searchProductsByProductTypeId = (productsTypeId, connection = mysql) ->
    new Promise (resolve, reject) ->
        sql ="
        SELECT
            *
        FROM
            t_products
        WHERE
            productsTypeId = ?"
        connection.query sql, [productsTypeId], (err, ret) ->
            console.log err
            return reject　'通过产品类型ID查询产品异常' if err
            return resolve [] if ret.length <= 0
            return resolve ret

module.exports.searchProductsTitleByProductTypeId = (productsTypeId, connection = mysql) ->
    new Promise (resolve, reject) ->
        sql ="
        SELECT
            id, title
        FROM
            t_products
        WHERE
            productsTypeId = ?"
        connection.query sql, [productsTypeId], (err, ret) ->
            console.log err
            return reject　'通过产品类型ID查询产品标题异常' if err
            return resolve [] if ret.length <= 0
            return resolve ret

module.exports.updateProductsClickCount = (productsId, count, connection = mysql) ->
    new Promise (resolve, reject) ->
        sql ="
        UPDATE
            t_products
        SET
          click = ?
        WHERE
            id = ?"
        connection.query sql, [count + 1, productsId], (err, ret) ->
            console.log err
            console.log err
            return reject　'更新的产品点击数量异常' if err
            return resolve true
