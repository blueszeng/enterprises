Koa = require('koa')
compress = require('koa-compress')
bodyParser = require('koa-bodyparser')
views = require('co-views')
# co = require('co')
http = require('http')
PORT = require('./config').PORT
_debug = require('debug')
debug = _debug('backend:server')
router = require('./routes/index')
views = views __dirname + '/views',
    map: html: 'swig'

debug('服务启动中')
app = new Koa()
# co.wrap(views)
app.use views
app.use compress(threshold: 1024)
app.use bodyParser()
app.use router.routes()

server = http.createServer app.callback()
server.listen PORT, () ->
    debug("服务已成功在 http://localhost:#{PORT}/ 启动")