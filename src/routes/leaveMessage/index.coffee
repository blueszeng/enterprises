Router = require('koa-router')
wrapRoute = require('../../utils/wrapRoute')
messageService = require('../../services/leaveMessage/leave-message')
validate = require('../../middlewares/validate/index')
Joi = require('joi')

router = Router()
router.use validate()
# home route api

router.get '/', wrapRoute (ctx) ->
    new Promise (resolve, reject) ->
        query = ctx.query
        console.log(query)
        messageService.getAllLeaveMessage(query.page)
        .then (messages) ->
            resolve
                template: 'leaveMessage/message'
                data:
                    messages: messages
                    menu:
                        message: true

router.get '/read/:leaveMsgId', wrapRoute (ctx) ->
    new Promise (resolve, reject) ->
        leaveMsgId = ctx.params.leaveMsgId
        console.log(leaveMsgId)
        messageService.getLeaveMessage(leaveMsgId)
        .then (message) ->
            console.log message
            resolve
                template: 'leaveMessage/show-message'
                data: {message: message}

router.get '/del', wrapRoute (ctx) ->
    new Promise (resolve, reject) ->
        query = ctx.query
        messageService.removeLeaveMessage(query.id)
        .then (messages) ->
            resolve
                url: '/leaveMessage'
                redirect: true

module.exports = router
