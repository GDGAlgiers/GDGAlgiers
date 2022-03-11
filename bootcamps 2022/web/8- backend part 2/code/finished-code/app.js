//import modules
const express = require('express');
const dotenv = require('dotenv');
const mongoose = require('mongoose');
const usersRouter = require('./routes/users');
const articlesRouter = require('./routes/articles');
const authRouter = require('./routes/auth');

//load env variables
dotenv.config();

const PORT = process.env.PORT;

//initialise the app
const app = express();

//use body parser
app.use(express.json());


//custom middleware
app.use((req, res, next) => {
    console.log(`[${new Date().toUTCString()}]: ${req.method} ${req.url}`);
    next();
})


//connect to database
const DB_URL = process.env.DB_URL;

mongoose.connect(DB_URL)
.then(() => {
    console.log("connected successfully to the database");
})
.catch((err) => {
    console.log(err);
})


//set routers
app.use('/users', usersRouter);
app.use('/articles', articlesRouter);
app.use('/auth', authRouter);

//response to: GET /
app.get('/', (req, res) => {
    res.send("hello world");
});


//make the app listen to incoming requests on the port number PORT
app.listen(PORT, () => {
    console.log(`server is running on http://localhost:${PORT}`);
})