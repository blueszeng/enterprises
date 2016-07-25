Router = require('koa-router')
wrapRoute = require('../../utils/wrapRoute')
multer = require('koa-multer')
Joi = require('joi')
router = Router()

storage = multer.diskStorage
    destination: (req, file, cb) ->
        cb(null, '/tmp/my-uploads')
    filename: (req, file, cb) ->
        cb(null, file.fieldname + '-' + Date.now())

upload = multer({ dest: 'uploads/' })

router.post '/upload', upload.array('zz', 12), wrapRoute (ctx) ->
    new Promise (resolve, reject) ->
        query = ctx.request.body
        console.log ctx.request.files, ctx.request.body

module.exports = router
