leaveMessageDao = require('../../daos/adminSys/leaveMessage/leave-message')

# 后台管理界面  留言API
module.exports.getAllLeaveMessage = (page = 1) ->
    new Promise (resolve, reject) ->
        limit = 5
        start  = (page  - 1) * limit
        console.log start
        Promise.all [
          leaveMessageDao.searchLeaveMessageCount()
          leaveMessageDao.searchAllLeaveMessageByWhere(start, limit)
          leaveMessageDao.searchStatus()
        ]
        .then (ret) ->
            count = ret[0]
            messages = ret[1]
            readStatus =
              read: if ret[2][0] then ret[2][0].count else 0
              unread: if ret[2][1] then ret[2][1].count else 0
            messages.readStatus = readStatus
            messages.count = count
            messages.currPage = page
            messages.maxPage = Math.ceil(count / limit)
            resolve messages
        .catch (err) ->
            console.log err
            reject err

module.exports.getLeaveMessage = (leaveMsgId) ->
    new Promise (resolve, reject) ->
        leaveMessageDao.updateLeaveMessageStatusById(leaveMsgId)
        .then () ->
            leaveMessageDao.searchLeaveMessageById(leaveMsgId)
            .then (ret) ->
                resolve ret
        .catch (err) ->
            reject err

module.exports.removeLeaveMessage = (leaveMsgIds) ->
    new Promise (resolve, reject) ->
        console.log leaveMsgIds
        leaveMsgIds = [leaveMsgIds] if not Array.isArray(leaveMsgIds)
        console.log leaveMsgIds
        leaveMessageDao.delLeaveMessageByIds(leaveMsgIds)
        .then (ret) ->
            resolve ret
        .catch (err) ->
            reject err

# 前端显示界面 留言API
module.exports.addLeaveMessage = (leavemsgInfo) ->
    new Promise (resolve, reject) ->
        leaveMessageDao.insertLeaveMessage(leavemsgInfo)
        .then (ret) ->
            resolve ret
        .catch (err) ->
            reject err
