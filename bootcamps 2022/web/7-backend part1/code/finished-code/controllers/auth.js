const User = require('../models/user');
const jwt = require('jsonwebtoken');
const { validationResult } = require('express-validator');
const bcrypt = require('bcrypt');
require('dotenv').config();

const JWT_KEY = process.env.JWT_KEY;

exports.login = async function(req, res) {
    try {
        const errors = validationResult(req);

        if(!errors.isEmpty()) {
            return res.status(400).json({
                errors: errors.array()
            });
        }

        const user = await User.findOne({ username: req.body.username });

        if(!user) {
            return res.status(404).json({
                error: 'no user found'
            });
        }

        if(await bcrypt.compare(req.body.password, user.password)) {
            const data = {
                id: user._id.toString()
            };

            const token = jwt.sign(data, JWT_KEY, {
                expiresIn: '5h'
            });

            return res.json({
                user,
                token
            });
        }

        return res.status(400).json({
            error: 'wrong password'
        });
        
    } catch(err) {
        console.log(err);
        res.status(500).json({
            error: 'there was an internal server error'
        });
    }
}