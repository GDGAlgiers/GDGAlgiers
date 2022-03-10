const router = require('express').Router();
const { body } = require('express-validator'); 
const {
    getUsers,
    getUserById,
    postUser,
    deleteUser
} = require('../controllers/users');
const { isAuth } = require('../middleware/auth');

router.get('/', getUsers);

router.get('/:id', getUserById);

router.post('/',
    body('username', 'the username must not be empty').notEmpty(),
    body('password', 'the password must be at least 8 characters').isLength({ min: 8 }),
    postUser
);

router.delete('/:id', isAuth, deleteUser);


module.exports = router;