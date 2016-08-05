Router = require('koa-router')
wrapRoute = require('../../../utils/wrapRoute')
adimService = require('../../../services/admin/admin')
Joi = require('joi')
router = Router()

router.get '/login', wrapRoute (ctx) ->
    new Promise (resolve, reject) ->
        resolve
            template: '/admin/login'

router.post '/login', wrapRoute (ctx) ->
    new Promise (resolve, reject) ->
        console.log 'ttttttttttttttttttttt'
        schema = Joi.object().keys
            userName: Joi.string().required().label('不合法的管理员帐号')
            password: Joi.string().required().label('不合法的管理员密码')
        adminInfo = ctx.request.body
        Joi.validate  adminInfo , schema, (err, value) ->
            console.log err, adminInfo
            if err
                return resolve
                    template: '/admin/login'
                    data: err: err.details[0].context.key
            adimService.validateAdminAccount adminInfo.userName, adminInfo.password
            .then (user) ->
                ctx.session.user = user
                return resolve
                    url: '/products/products'
                    redirect: true
            .catch (err) ->
                resolve
                    template: '/admin/login'
                    data: err: err

router.post '/modifyPassword', wrapRoute (ctx) ->
    new Promise (resolve, reject) ->
        schema = Joi.object().keys
            userName: Joi.string().required().label('不合法的管理员帐号')
            password: Joi.string().required().label('不合法的管理员密码')
        adminInfo = ctx.request.body
        Joi.validate  adminInfo , schema, (err, value) ->
            if err
                return resolve
                    template: 'admin/modifypwd'
                    data: err: err.details[0].context.key
            adimService.modifyAdminPassword adminInfo.userName, adminInfo.password
            .then (ret) ->
                adimService.getAdminAccount(adminInfo.userName)
                .then (user) ->
                    ctx.session.user = user
                    resolve
                        url: 'admin/index'
                        redirect: true
            .catch (err) ->
                resolve
                    template: 'admin/modifypwd'
                    data: err: err

module.exports = router
