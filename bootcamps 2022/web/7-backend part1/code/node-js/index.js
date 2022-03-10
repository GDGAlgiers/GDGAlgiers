//index.js
//import calculator module
const calculator = require('./calculator.js');
// you can also use this syntax
// const { sum, sub, PI } = require('./calculator.js');

console.log(calculator.sum(2, 3));
console.log(calculator.sub(5, 1));
console.log(calculator.PI);

//in case you used the second syntax
// console.log(sum(2, 3));
// console.log(sub(5, 1));
// console.log(PI);