//import 'fs' module
const fs = require('fs');

fs.readFile('hello.txt', (err, data) => {
    //check if there is an error
    if (err) {
        console.log(err);
        return;//exit program
    }
    //if there is no error, we print data
    console.log(data.toString());
});