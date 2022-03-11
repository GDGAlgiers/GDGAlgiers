const router = require('express').Router();
const { login } = require('../controllers/auth');
const { body } = require('express-validator');

router.post('/login',
    body('username', 'username must not be empty').notEmpty(),
    body('password', 'password must be at least 8 characters').isLength({ min: 8 }),
    login);

module.exports = router;