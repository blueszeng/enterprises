Koa = require('koa')
compress = require('koa-compress')
bodyParser = require('koa-bodyparser')
path =require('path')
views = require('co-views')
http = require('http')
serve = require('koa-static')
PORT = require('./config').PORT
_debug = require('debug')
debug = _debug('backend:server')
router = require('./routes/index')
errorMiddleWare = require('./middlewares/error/index')

debug('服务启动中')
app = new Koa()
app.use serve(__dirname + '/public')
app.context.render =
  views __dirname + '/views',
        map: html: 'swig'
app.use compress(threshold: 1024)
app.use bodyParser()
app.use errorMiddleWare()
app.use router.routes()
server = http.createServer app.callback()
server.listen PORT, () ->
    console.log("服务已成功在 http://localhost:#{PORT}/ 启动")
