mysql = require('../../../stores/mysql')

module.exports.insertArticlesType = (articlesTypeInfo, connection = mysql) ->
    new Promise (resolve, reject) ->
        sql ="
        INSERT INTO
            t_articles_type
            (name)
        VALUES
            (?)"
        connection.query sql, [articlesTypeInfo.name], (err, ret) ->
            console.log err
            reject　'添加文章类型异常' if err
            resolve true

module.exports.updateArticlesType = (articlesTypeInfo, connection = mysql) ->
    new Promise (resolve, reject) ->
        sql ="
        UPDATE
            t_articles_type
        SET
          name =?
        WHERE
            id = ?"
        connection.query sql, [articlesTypeInfo.name, articlesTypeInfo.id], (err, ret) ->
            reject　'更新文章类型异常' if err
            resolve true

module.exports.delArticlesType = (articlesTypeId, connection = mysql) ->
    new Promise (resolve, reject) ->
        sql ="
        DELETE FROM
            t_articles_type
        WHERE
          id = ?"
        connection.query sql, [articlesTypeId], (err, ret) ->
            reject　'删除文章类型异常' if err
            resolve true

module.exports.searchArticlesTypeByArticlesId = (articlesTypeId, connection = mysql) ->
    new Promise (resolve, reject) ->
        sql ="
          SELECT
            *
          FROM
             t_articles_type
          WHERE
             id = ?"
        connection.query sql, [articlesTypeId], (err, ret) ->
            return reject　'检索文章类型异常' if err
            return resolve {} if ret.length <= 0
            return resolve ret[0]

module.exports.searchAllArticlesType = (start = 0, limit = 15, connection = mysql) ->
    new Promise (resolve, reject) ->
        sql ="
          SELECT
            *
          FROM
             t_articles_type
          LIMIT ?, ?"
        console.log sql
        connection.query sql, [start, limit], (err, ret) ->
            return reject　'检索所有文章类型异常' if err
            return resolve [] if ret.length <= 0
            return resolve ret

module.exports.searchAllArticlesTypeIds = (connection = mysql) ->
    new Promise (resolve, reject) ->
        sql ="
          SELECT
            id
          FROM
             t_articles_type
        "
        console.log sql
        connection.query sql, (err, ret) ->
            return reject　'检索所有文章类型异常' if err
            return resolve [] if ret.length <= 0
            return resolve ret

module.exports.searchArticlesTypeCount = (connection = mysql) ->
    new Promise (resolve, reject) ->
        sql ="
          SELECT
            count(1) as count
          FROM
             t_articles_type"
        connection.query sql, (err, ret) ->
            return reject　'检索所有文章类型数量异常' if err
            return resolve 0 if ret.length <= 0
            return resolve ret[0].count
