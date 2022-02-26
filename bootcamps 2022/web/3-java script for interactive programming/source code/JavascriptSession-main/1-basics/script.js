//loading js

document.querySelector(".txt").innerText = "after loading js"


// setTimeout(() => {
//     document.querySelector(".txt").innerText = "after loading js"
// }, 2000)


// scoope variables

// let a = 5

// // function reset () {
// //     a = 0
// // }

// // reset()
// console.log(a)


// math operations 

let A = 3
let B = "2"

// addition between number and a string is concatinating

console.log("A + B  : (knowing that B is a string) ")
console.log(A + B)


// converting data types
console.log("A + B : ")
console.log(A + Number(B))

console.log("A + B : ")
console.log(A + +B)

console.log("A - B : ")
console.log(A - B)

console.log("A * B : ")
console.log(A * B)

console.log("A ** B : ")
console.log(A ** B)

//difference betweem == (abstract comparaison) and === (strict comparaison)

let C = 1
let D = "1"

if (C === D) {
    console.log("D is equal to C")
} else {

    console.error("D is not equal to C")

}


//same thing for !== and !=

// functions declaration :

function someMath(a, b) {
    let c = a - b
    return c
}

// function expression

let moreMath = function(a, b) {
    return a * B
}

// arrow function 

let arrowFunction = (a, b) => {
    return a + b
}

console.log("do some math", someMath(3, 4))
console.log("do more math", moreMath(3, 4))
console.log("addition", arrowFunction(3, 4))


// data types 

// String:
let stringDemo = "A string of text.";
console.log("String:", stringDemo);

// Numbes:
let integerDemo = 4;
console.log("Integer:", integerDemo);

let floatDemo = 5.6;
console.log("Floating point number:", floatDemo);

// Boolean:
let booleanDemo = true;
console.log("Boolean value:", booleanDemo);

// Null value (nothing):
let nullDemo = null;
console.log("Null value:", nullDemo);

// Undefined:
let undefinedDemo;
console.log("Undefined:", undefinedDemo);

let undefinedAssignedDemo = undefined;
console.log("Undefined assigned:", undefinedAssignedDemo);

// Object:
const objectDemo = {
    name: "webDev",
    session: 4,
};

console.log("Object:", objectDemo);

// Array:
const arrayDemo = ["html", "css", "javascript", "react"];
console.log("Array:", arrayDemo);

for (let i = 0; i < arrayDemo.length; i++) {
    arrayDemo[i] = arrayDemo[i + 1];
}
arrayDemo[arrayDemo.length - 1] = "nodeJS"
console.log(arrayDemo)


//strings output

const carName = "bmw"

console.log(`hello everyone 
  i have a car 
  from ${carName}`)

console.log("hello everyone i have a car from ")