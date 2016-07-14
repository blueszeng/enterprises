Koa = require('koa')
compress = require('koa-compress')
bodyParser = require('koa-bodyparser')
render = require('koa-swig')
path =require('path')
co = require('co')
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
app.context.render = co.wrap(render
    root: path.join(__dirname, 'views')
    writeBody: true
    ext: 'html')
app.use compress(threshold: 1024)
app.use bodyParser()
app.use errorMiddleWare()
app.use router.routes()

server = http.createServer app.callback()
server.listen PORT, () ->
    console.log("服务已成功在 http://localhost:#{PORT}/ 启动")



        