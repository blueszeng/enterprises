Router = require('koa-router')
wrapRoute = require('../../../utils/wrapRoute')
adimService = require('../../../services/admin/admin')
Joi = require('joi')
router = Router()

router.get '/login', wrapRoute (ctx) ->
    new Promise (resolve, reject) ->
        resolve
            template: 'admin/login'

router.get '/index', wrapRoute (ctx) ->
    new Promise (resolve, reject) ->
        resolve
            template: 'admin/index'
            data: messages: [
              {name: 'zzz1', createTime: '2', message: 'sbsbsbsbsbsbs1sbsbsbsbsbsb
                s1sbsbsbsbsbsbs1sbsbsbsbsbsbs1sbsbsbsbsbsbs1sbsbsbsbsbsbs1sbsbsbsb
                sbsbs1sbsbsbsbsbsbs1sbsbsbsbsbsbs1sbsbsbsbsbsbs1sbsbsbsbsbsbs11sbsbsb\n
                sbsbsbs1sbsbsbsbsbsbs1sbsbsbsbsbsbs1sbsbsbsbsbsbs11sbsbsbsbsbsbs1sbs\nb
                sbsbsbsbs1sbsbsbsbsbsbs1sbsbsbsbsbsbs11sbsbsbsbs\nbsbs1sbsbsbsbsbsbs1sbs
                bsbsbsbsbs1sbsbsbsbsbsbssbs1sbsbsbsbsbsbs1sbsbsbsbsbsbs1sbsbsbsbsbsbsbs1sbsb
                sbsbsbsbs1sbsbsbsbsbsbs1sbsbsbsbsbsbsbs1sbsbsbsbsbsbs1sbsbsbsbsbsbs1sbsbsbsbsbsb1'}
              {name: 'zzz2', createTime: '22', message: 'sbsbsbsbsbsbs2'}
              {name: 'zzz3', createTime: '23', message: 'sbsbsbsbsbsbs3'}
              {name: 'zzz3', createTime: '25', message: 'sbsbsbsbsbsbs3'}
              {name: 'zzz3', createTime: '23', message: 'sbsbsbsbsbsbs3'}
              {name: 'zzz3', createTime: '25', message: 'sbsbsbsbsbsbs3'}
            ]



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
            console.log err, adminInfo
            if err
                return resolve
                    template: 'admin/login'
                    data: err: err.details[0].context.key
            console.log adminInfo
            adimService.validateAdminAccount adminInfo.userName, adminInfo.password
            .then (ret) ->
                return resolve
                    url: 'index'
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
