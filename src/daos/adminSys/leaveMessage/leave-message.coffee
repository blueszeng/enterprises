mysql = require('../../../stores/mysql')

module.exports.insertLeaveMessage = (leavemsgInfo, connection = mysql) ->
    new Promise (resolve, reject) ->
        sql ="
        INSERT
            t_leave_message
            (name, phone, address, emal, message, createTime, status)
        VALUES
            (?,?,?,?,?,now(),0)"
        connection.query sql, [
            leavemsgInfo.name, leavemsgInfo.phone,
            leavemsgInfo.address, leavemsgInfo.emal,
            leavemsgInfo.message, leavemsgInfo.createTime], (err, ret) ->
                console.log err
                reject　'添加添加留言异常' if err
                resolve true

module.exports.searchLeaveMessageBymatchDate = (matchDate, connection = mysql) ->
    new Promise (resolve, reject) ->
        sql ="
        SELECT
            *
        FROM
            t_leave_message
        WHERE
            DATE(createdTime) = matchDate"
        connection.query sql, [leaveMsgId]
        (err, ret) ->
            return reject　'通过日期查询留言异常' if err
            return resolve [] if ret.length <= 0
            return resolve ret

module.exports.searchAllLeaveMessageByWhere = (start = 0, limit = 15, connection = mysql) ->
    new Promise (resolve, reject) ->
        sql ="
        SELECT
            *
        FROM
            t_leave_message
        LIMIT ?, ?
        "
        console.log sql
        connection.query sql, [start, limit], (err, ret) ->
            console.log err
            return reject　'查询所有留言异常' if err
            return resolve [] if ret.length <= 0
            return resolve ret

module.exports.searchLeaveMessageCount = (connection = mysql) ->
    new Promise (resolve, reject) ->
        sql ="
        SELECT
            count(1) as count
        FROM
            t_leave_message
        "
        console.log sql
        connection.query sql,  (err, ret) ->
            console.log err
            return reject　'查询所有留言条数异常' if err
            return resolve 0 if ret.length <= 0
            return resolve ret[0].count

module.exports.searchStatus = (connection = mysql) ->
    new Promise (resolve, reject) ->
        sql ="
        SELECT
          count(1) as count
        FROM
            t_leave_message
        GROUP BY
            status
        ORDER BY status
        "
        console.log sql
        connection.query sql, (err, ret) ->
            console.log err
            return reject　'查询所有留言查看状态异常' if err
            return resolve [] if ret.length <= 0
            return resolve ret

module.exports.searchLeaveMessageById = (leaveMsgId, connection = mysql) ->
    new Promise (resolve, reject) ->
        sql ="
        SELECT
            *
        FROM
            t_leave_message
        WHERE
            id = ?"
        console.log sql
        connection.query sql, [leaveMsgId], (err, ret) ->
            console.log err
            return reject　'查询留言异常' if err
            return resolve {} if ret.length <= 0
            return resolve ret[0]

module.exports.updateLeaveMessageStatusById = (leaveMsgId, connection = mysql) ->
    new Promise (resolve, reject) ->
        sql ="
        UPDATE
            t_leave_message
        SET
          status = 1
        WHERE
            id = ?"
        console.log sql
        connection.query sql, [leaveMsgId], (err, ret) ->
            console.log err
            return reject　'更新留言状态异常' if err
            return resolve true

module.exports.delLeaveMessageByIds = (leaveMsgIds, connection = mysql) ->
    new Promise (resolve, reject) ->
        sql ="
        DELETE
        FROM
            t_leave_message
        WHERE
            id = #{leaveMsgIds.join(' or id =')}"
        console.log sql
        connection.query sql, (err, ret) ->
            console.log err
            return reject　'删除留言异常' if err
            return resolve true
