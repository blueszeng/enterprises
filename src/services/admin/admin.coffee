adminDao = require('../../daos/adminSys/admin/admin')
HASHKEY = require('../../config').HASHKEY
encode = require('../../utils/encode')


module.exports.modifyAdminPassword = (userName, password) ->
    new Promise (resolve, reject) ->
        encode.encodePBKDF2(password, HASHKEY)
        .then (hash) ->
            console.log hash
            adminDao.updateAdminPassword(userName, hash)
            .then (ret) ->
                resolve(true)
        .catch (err) ->
            reject(err)

module.exports.validateAdminAccount = (userName, password) ->
    new Promise (resolve, reject) ->
        console.log userName, password
        adminDao.searchAdminByUserName(userName)
        .then (user) ->
            if Object.keys(user).length < 0
                return reject('用户名不正确')
            encode.encodePBKDF2(password, HASHKEY)
            .then (hash) ->
                return resolve user if hash == user.password
                reject '登陆密码错误'
        .catch (err) ->
            reject(err)

module.exports.getAdminAccount = (userName) ->
    adminDao.searchAdminByUserName(userName)
    .then (user) ->
        if Object.keys(user).length < 0
            return reject('用户名不正确')
        return user
