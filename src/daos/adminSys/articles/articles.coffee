mysql = require('../../../stores/mysql')

module.exports.insertArticles = (articlesInfo, connection = mysql) ->
    new Promise (resolve, reject) ->
        sql ="
        INSERT
            t_articles
            (createTime, author, body, articleTypeId, title)
        VALUES
            (now(), ?, ?, ?, ?)"
        connection.query sql,
          [articlesInfo.author, articlesInfo.article_content,
          articlesInfo.id, articlesInfo.title], (err, ret) ->
              console.log err
              reject　'添加文章异常' if err
              resolve true

module.exports.updateArticles = (articlesInfo, connection = mysql) ->
    new Promise (resolve, reject) ->
        sql ="
        UPDATE
            t_articles
        SET
          updateTime =now(), author =?, body =?, articleTypeId =?, title =?
        WHERE
            id = ?"
        console.log articlesInfo.author, articlesInfo.article_content,
          articlesInfo.articlesTypeId, articlesInfo.title, articlesInfo.id
        connection.query sql, [articlesInfo.author, articlesInfo.article_content,
          articlesInfo.articlesTypeId, articlesInfo.title, articlesInfo.id], (err, ret) ->
              console.log err
              reject　'更新文章异常' if err
              resolve true

module.exports.delArticles = (articlesId, connection = mysql) ->
    new Promise (resolve, reject) ->
        sql ="
        DELETE FROM
            t_articles
        WHERE
          id = ?"
        connection.query sql, [articlesId], (err, ret) ->
            reject　'删除文章异常' if err
            resolve true

module.exports.searchArticlesByArticlesId = (articlesId, connection = mysql) ->
    new Promise (resolve, reject) ->
        sql ="
          SELECT
            *
          FROM
             t_articles
          WHERE
             id = ?"
        connection.query sql, [articlesId], (err, ret) ->
            return reject　'检索文章异常' if err
            return resolve {} if ret.length <= 0
            return resolve ret[0]

module.exports.searchAllArticles = (articleTypeId, title, start = 0, limit = 15, connection = mysql) ->
    new Promise (resolve, reject) ->
        sql ="
          SELECT
            *
          FROM
             t_articles
          WHERE
            1=1"
        conditions = []
        if articleTypeId
            sql += " AND articleTypeId = ?"
            conditions.push articleTypeId
        if title
            sql += " AND title = ?"
            conditions.push title
        sql += " LIMIT ?, ?"
        conditions.push start
        conditions.push limit
        console.log sql
        connection.query sql, conditions, (err, ret) ->
            console.log err
            return reject　'检索所有文章异常' if err
            return resolve [] if ret.length <= 0
            return resolve ret

module.exports.searchArticlesCount = (articleTypeId, title, connection = mysql) ->
    new Promise (resolve, reject) ->
        sql ="
          SELECT
            count(1) as count
          FROM
             t_articles
          WHERE
            1=1"
       conditions = []
       if articleTypeId
           sql += " AND articleTypeId = ?"
           conditions.push articleTypeId
       if title
           sql += " AND title = ?"
           conditions.push title
        connection.query sql, conditions, (err, ret) ->
            return reject　'检索所有文章类型数量异常' if err
            return resolve 0 if ret.length <= 0
            return resolve ret[0].count

module.exports.searchArticlesByArticlesTypeId = (articlesTypeId, connection = mysql) ->
    new Promise (resolve, reject) ->
    sql ="
      SELECT
        t_articles.title, t_articles.title
      FROM
         t_articles
      WHERE
       articlesType = ?"
    connection.query sql, [articlesTypeId]
    (err, ret) ->
        return reject　'检索文章异常' if err
        return resolve [] if ret.length <= 0
        return resolve ret
