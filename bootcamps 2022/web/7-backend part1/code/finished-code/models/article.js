const mongoose = require('mongoose');

//declaring the article schema
const articleSchema = new mongoose.Schema({
    title: {
        type: String,
        required: true,
    },
    description: {
        type: String,
        required: true,
    },
    body: {
        type: String,
        required: true,
    },
    author: {
        type: String,
        required: true,
    }
}, {
    timestamps: true
});


module.exports = mongoose.model('article', articleSchema);