Koa = require('koa')
compress = require('koa-compress')
bodyParser = require('koa-bodyParser')
views = require('co-views')
http = require('http')
PORT = require('./config').PORT
debug = _debug('backend:server')
router = require('./routes/index')
views = views __dirname + '/views',
    map: html: 'swig'
    
debug('服务启动中')
app = new Koa()
app.use views
app.use compress(threshold: 1024)
app.use bodyParser()
app.use router.routes()

server = http.createServer app.callback()
server.listen POR, () ->
    debug("服务已成功在 http://localhost:#{PORT}/ 启动")