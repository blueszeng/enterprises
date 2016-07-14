Router = require('koa-router')
wrapRoute = require('../../../utils/wrapRoute')
adimService = require('../../../services/admin/admin')
Joi = require('joi')

router = Router()

router.get '/login', wrapRoute (ctx) ->
    new Promise (resolve, reject) ->
        resolve
            url: '/api/admin/test'
            redirect: true

router.get '/test', wrapRoute (ctx) ->
    new Promise (resolve, reject) ->
        resolve
            template: 'admin/login'
            data: test: 324

router.post '/login', wrapRoute (ctx) ->
    new Promise (resolve, reject) ->
        schema = Joi.object().keys
            userName: Joi.string().required().label('不合法的管理员帐号')
            password: Joi.string().required().label('不合法的管理员密码')
        adminInfo = ctx.request.body
        Joi.validate  adminInfo , schema, (err, value) ->
            if err
                return resolve
                    template: 'admin/login'
                    data: err: err.details[0].context.key
            adimService.validateAdminAccount adminInfo.userName, adminInfo.password
            .then (ret) ->
                resolve
                url: '/api/admin/index'
                redirect: true
            .catch (err) ->
                resolve
                    template: 'admin/login'
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
            modifyAdminPassword adminInfo.userName, adminInfo.password
            .then (ret) ->
                resolve
                    url: 'admin/index'
                    redirect: true
            .catch (err) ->
                resolve
                    template: 'admin/modifypwd'
                    data: err: err

module.exports = router
