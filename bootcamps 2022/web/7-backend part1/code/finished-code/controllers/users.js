const { validationResult } = require('express-validator');
const bcrypt = require('bcrypt');
const User = require('../models/user');

const SALT_ROUNDS = 10;

exports.getUsers = async function(req, res) {
    try {
        const users = await User.find({});

        res.json({
            users
        });
    } catch(err) {
        console.log(err);
        res.status(500).json({
            error: 'there was an internal server error'
        });
    }
}


exports.getUserById = async function(req, res) {
    try {
        const user = await User.findById(req.params.id);

        if (user) {
            return res.json({
                user
            });
        }

        return res.status(404).json({
            error: 'no user found'
        });

    } catch(err) {
        console.log(err);
        res.status(500).json({
            error: 'there was an internal server error'
        });
    }
}



exports.postUser = async function(req, res) {
    try {
        const errors = validationResult(req);

        if(!errors.isEmpty()) {
            return res.status(400).json({
                errors: errors.array()
            });
        }

        const hash = await bcrypt.hash(req.body.password, SALT_ROUNDS);

        const user = new User({
            username: req.body.username,
            password: hash
        });
        
        await user.save();

        return res.status(201).json({
            message: 'user created',
            user
        });

    } catch(err) {
        console.log(err);
        res.status(500).json({
            error: 'there was an internal server error'
        });
    }
}



exports.deleteUser = async function(req, res) {
    try {
        if(req.user._id.toString() !== req.params.id) {
            return res.status(401).json({
                error: 'not authorized'
            });
        }

        const user = await User.findByIdAndDelete(req.params.id);

        return res.json({
            message: 'user deleted',
            user
        });

        
    } catch(err) {
        console.log(err);
        res.status(500).json({
            error: 'there was an internal server error'
        });
    }
}