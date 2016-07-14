module.exports.PORT = PORT = process.env.PORT || 3005
module.exports.DEVELOPMENT = DEVELOPMENT = process.env.NODE_ENV != 'production'
module.exports.TEST = TEST = process.env.NODE_ENV == 'testing'

module.exports.MYSQLURL = do () ->
    if TEST
        return "mysql://root:123456@192.168.1.238/deerwar_test?debug=false&charset=utf8mb4&
        timezone=+0800&connectionLimit＝8&waitForConnections=true&queueLimit=0&acquireTimeout=30000"
    else if DEVELOPMENT
        return "mysql://root:123456@192.168.1.238/deerwar_test?debug=false&charset=utf8mb4&
            timezone=+0800&connectionLimit＝8&waitForConnections=true&queueLimit=0&acquireTimeout=30000"
    else
        return "mysql://deerwar:tdtz0314Q@rm-wz969op83xr5hl885.mysql.rds.aliyuncs.com/deerwar?debug=false&
            charset=utf8mb4&timezone=+0800&connectionLimit＝8&waitForConnections=true&queueLimit=0&acquireTimeout=30000"
 #加盐hash值
module.exports.HASHKEY = 'knhu4%1O'