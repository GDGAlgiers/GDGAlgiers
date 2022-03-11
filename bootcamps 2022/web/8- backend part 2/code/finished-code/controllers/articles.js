const { validationResult } = require('express-validator');
const Article = require('../models/article');

exports.getArticles = async function(req, res) {
    try {
        const articles = await Article.find({});
        res.json({
            articles
        });

    } catch (error) {
        console.log(error);
        res.status(500).json({
            error: 'there was an internal server error'
        });
    }
}


exports.getArticleById = async function(req, res) {
    try {
        const article = await Article.findById(req.params.id);

        if (article != null) {
            res.json({
                article
            });
        } else {
            res.status(404).json({
                error: 'there is no article with that id'
            });
        }
    } catch (error) {
        console.log(error);
        res.status(500).json({
            error: 'there was an internal server error'
        });
    }
}


exports.postArticle = async function(req, res) {
    try {
        const errors = validationResult(req);

        if (!errors.isEmpty()) {
            res.status(400).json({
                errors: errors.array()
            });
        } else {
            const article = new Article(req.body);
            await article.save();

            res.status(201).json({
                message: 'article created',
                article
            });
        }
    } catch (error) {
        console.log(error);
        res.status(500).json({
            error: 'there was an internal server error'
        });
    }
}


exports.putArticle = async function(req, res) {
    try {
        const errors = validationResult(req);

        if(!errors.isEmpty()) {
            return res.status(400).json({
                errors: errors.array()
            });
        }

        const article = await Article.findOneAndUpdate({ _id: req.params.id }, req.body, { new: true });

        if (article == null) {
            return res.status(404).json({
                error: 'no article found with that id'
            });
        }

        return res.json({
            message: 'article updated successfully',
            article
        });

        
    } catch (error) {
        console.log(error);
        res.status(500).json({
            error: 'there was an internal server error'
        });
    }
}


exports.deleteArticle = async function(req, res) {
    try {
        const article = await Article.findByIdAndDelete(req.params.id);

        if (article == null) {
            return res.status(404).json({
                error: 'no article found with that id'
            });
        }

        return res.json({
            message: 'article deleted successfully',
            article
        });

    } catch (error) {
       console.log(error);
       res.status(500).json({
            error: 'there was an internal server error'
       });
    }
}