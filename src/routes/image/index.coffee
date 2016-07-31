Router = require('koa-router')
wrapRoute = require('../../utils/wrapRoute')
multer = require('koa-multer')
Joi = require('joi')
fs = require('fs')
router = Router()

upload = multer  dest: 'tmp/'
type = upload.single('recfile')
router.post '/upload', type, wrapRoute (ctx) ->
    new Promise (resolve, reject) ->
        tmpPath = ctx.req.file.path
        fatcherPath = 'src/public'
        targetPath = fatcherPath + '/uploads/' + ctx.req.file.originalname
        filePath = '/uploads/' + ctx.req.file.originalname
        console.log tmpPath, targetPath
        src = fs.createReadStream tmpPath
        dest = fs.createWriteStream targetPath
        src.pipe dest
        src.on 'end', () ->
            resolve
                isJson: true
                data: path:  filePath
        src.on 'error', (err) ->
            resolve
                data: path: err



type = upload.single('upload')
router.post '/articleUpload', type,  wrapRoute (ctx) ->
    new Promise (resolve, reject) ->
        console.log(ctx.query)
        callback = ctx.query.CKEditorFuncNum
        tmpPath = ctx.req.file.path
        fatcherPath = 'src/public'
        targetPath = fatcherPath + '/uploads/' + ctx.req.file.originalname
        filePath = '/uploads/' + ctx.req.file.originalname
        console.log tmpPath, targetPath
        src = fs.createReadStream tmpPath
        dest = fs.createWriteStream targetPath
        src.pipe dest
        src.on 'end', () ->
            resolve
                isEditJson: true
                data: "<script type='text/javascript'>window.parent.CKEDITOR.tools.callFunction(#{callback}, '#{filePath}');</script>"
        src.on 'error', (err) ->
            resolve
                data: path: err

module.exports = router
