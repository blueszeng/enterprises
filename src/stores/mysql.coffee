mysql = require('mysql')
config = require('../config')
_debug = require('debug')
debug = _debug('enterprises:store:mysql')
pool = mysql.createPool(config.MYSQLURL)
pool.on 'connection', (connection) ->
    console.log 'MYSQL数据库连接已分配'
    connection.on 'error', (err) ->
        console.error 'MYSQL数据库错误', err.code
    connection.on 'end', (err) ->
        console.error 'MYSQL数据库连接结束', err
  
module.exports = pool