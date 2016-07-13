adminDao = require('../../daos/admin/admin')

module.exports.modifyAdminPassword =  (userName, password) ->
    new Promise (resolve, reject) ->
        adminDao.updateAdminPassword(userName, password)
        .then (ret) ->
            resolve(true)
        .catch (err) ->
            reject(err)
