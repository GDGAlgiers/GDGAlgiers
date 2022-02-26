button = document.querySelector(".button")
text = document.querySelector(".color")


button.addEventListener("click", (e) => {
    text.style.color = "red"
    text.innerHtml = "text is colored"
    console.log(e.target.parentNode)

} )

button.addEventListener("mouseenter", (e) => {
    text.style.color = "red"
    text.innerText = "text is colored"
    console.log(e.target.parentNode)

} )
button.addEventListener("mouseout", (e) => {
    text.style.color = "black"
    text.innerText = "text is not colored"
    console.log(e.target.parentNode)

} )

