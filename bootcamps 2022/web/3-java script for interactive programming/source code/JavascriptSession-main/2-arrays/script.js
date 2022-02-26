// array methods : 

/*length
push
pop
shift
unshift*/


const array = [1, 23, 40, 5]
array.push(34)
console.log("array push ", array)

array.pop()
console.table(array)

array.shift()
console.table(array)

array.unshift(433)

console.table(array)


/*
map
filter
forEach
*/

const arrayOfNumbers = [23, 43, 64, 1, 90]

const newArray = arrayOfNumbers.map(number => {
    return number*2
})

console.table(newArray)

//filter
const newFilteredArray = arrayOfNumbers.filter(number => number > 20)

console.table(newFilteredArray)

// forEach 

arrayOfNumbers.forEach((num) => {
    console.log(++num)
})