mysql = require('../../../stores/mysql')

module.exports.insertAdmin = (adminInfo, connection = mysql) ->
    new Promise (resolve, reject) ->
        sql ="
        INSERT
            t_admin
            (userName, password)
        VALUES
            (?,?)"
        connection.query sql, [adminInfo.username, adminInfo.password]
        (err, ret) ->
            reject　'添加管理员帐号出错' if err
            resolve true

module.exports.updateAdminPassword = (userName, password, connection = mysql) ->
    new Promise (resolve, reject) ->
        sql ="
        UPDATE
            t_admin
        SET
            password = ?
        WHERE
            userName = ?"
        connection.query sql, [password, userName]
        (err, ret) ->
            return reject　'更新管理员帐号出错' if err
            return resolve true

module.exports.searchAdminByUserName = (userName, connection = mysql) ->
    new Promise (resolve, reject) ->
        sql ="
        SELECT
            *
        FROM
            t_admin
        WHERE
            userName = ?"
        console.log sql, connection.query
        connection.query sql, [userName], (err, ret) ->
            console.log ret
            return reject　'通过用户名查询管理员信息出错' if err
            return resolve ret[0] if ret.length > 0
            return resolve {}
