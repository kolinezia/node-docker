const mongoose = require('mongoose')

const userSchema = new mongoose.Schema({
    username: {
        type: String,
        reqire: [true, 'User must have a username'],
        unique: true,
    },
    password: {
        type: String,
        require: [true, 'User must have a passwrod'],
    }
})

const User = mongoose.model('User', userSchema)
module.exports = User