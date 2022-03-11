const User = require('../models/user');
const jwt = require('jsonwebtoken');
require('dotenv').config();
const JWT_KEY = process.env.JWT_KEY;

exports.isAuth = async function(req, res, next) {
    try {
        const { authorization } = req.headers;

        if(!authorization) {
            return res.status(401).json({
                error: 'unauthorized to perform this request'
            });
        }

        const [bearer, token] = authorization.split(' ');

        if(bearer !== 'Bearer') {
            return res.status(401).json({
                error: 'unauthorized to perform this request'
            });
        }

        const { id } = await jwt.verify(token, JWT_KEY);
        const user = await User.findById(id);

        if(!user) {
            return res.status(401).json({
                error: 'unauthorized to perform this request'
            });
        }

        req.user = user;
        next();
        
    } catch(err) {
        console.log(err);
        res.status(500).json({
            error: 'there was an internal server error'
        });
    }
}