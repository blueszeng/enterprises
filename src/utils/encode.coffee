crypto = require('crypto')
module.exports.encodePBKDF2 = (plainText, salt) ->
    new Promise (resolve, reject) ->
        crypto.pbkdf2 plainText, salt, 4096, 256, (err, hash) ->
            return reject err if err
            resolve hash.toString 'hex'
