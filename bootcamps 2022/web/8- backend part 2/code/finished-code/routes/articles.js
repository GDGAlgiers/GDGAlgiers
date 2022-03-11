const router = require('express').Router();
const { body } = require('express-validator');
const {
    getArticles,
    getArticleById,
    postArticle,
    putArticle,
    deleteArticle
} = require('../controllers/articles');
const { isAuth } = require('../middleware/auth');

router.get('/', getArticles);

router.get('/:id', getArticleById);

router.post('/',
    isAuth,
    body('title', 'the title must not be empty').notEmpty(),
    body('description', 'the description must not be empty').notEmpty(),
    body('body', 'the body must not be empty').notEmpty(),
    body('author', 'the author name must not be empty').notEmpty(),
    postArticle
);

router.put('/:id',
    isAuth,
    body('title', 'the title must not be empty').notEmpty(),
    body('description', 'the description must not be empty').notEmpty(),
    body('body', 'the body must not be empty').notEmpty(),
    body('author', 'the author name must not be empty').notEmpty(),
    putArticle
);

router.delete('/:id', isAuth, deleteArticle);

module.exports = router;