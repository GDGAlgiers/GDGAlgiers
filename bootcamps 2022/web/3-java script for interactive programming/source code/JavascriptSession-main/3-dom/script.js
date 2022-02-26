// 1- target an element inside the dom

//old way
let container = document.getElementById("contain")

// container = document.getElementsByClassName("elem")
// console.log(container)

//new way : write any selector you want inside 

// container = document.querySelector(".three")

let listElements = document.querySelectorAll(".elem")

console.log(listElements)


// 2- classes manipulatation

container.classList.add("one")
container.classList.remove("one")
console.log(container.classList.contains("one"))


// 3- attributes manipulation

console.log(container.hasAttribute("class"))
container.setAttribute("data", "20")
console.log(container.getAttribute("data"))
console.log(container)


// 4-create elements

let newElem = document.createElement("div")
newElem.innerText = "this is the new elem created with javascript"
newElem.style.color = "red"
container.appendChild(newElem)
