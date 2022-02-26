//todo app plan : 
// 1- add a task to array 
// 2- show the new array
// 3- delete a task from the array 
// 4- complete a task


//find elements :
let add = document.querySelector('.add');
let input = document.querySelector('.input')
let tasks = document.querySelector('.tasks')

//array of tasks :
let tasksArray = []

// capture events

add.addEventListener("click", (e)=> {
    if (input.value !== "") {
        addTask(input.value)
        input.value = ""
        addElementToPage (tasksArray)

    }

})

tasks.addEventListener("click", (e) => {
    if (e.target.classList.contains("task")) {
    changeTaskStatus(e.target.getAttribute("data-id"))
    addElementToPage(tasksArray)
}

})

tasks.addEventListener("click", (e) => {
    if (e.target.classList.contains("delete")) {
        deleteTask(e.target.parentNode.getAttribute("data-id"))
        e.target.parentNode.remove()
        
    }
})

window.onload = (e) => {
    if (tasksArray.length == 0) {
        tasks.innerText = "there is no task."
    }
}

//functions 

function addTask(taskText) {

    const task = {
        name : taskText,
        completed : false,
        id : Date.now()
    }
    
        tasksArray.push(task)

    }

function addElementToPage (tasksArray) {
    
    tasks.innerText = ""

    tasksArray.forEach(task => {
        newElem = document.createElement("div")
        newElem.classList.add("task")
        //newElem.innerText = task.name
        newElem.setAttribute("data-id", task.id)

        let deleteSpan = document.createElement("span")
        newElem.appendChild(document.createTextNode(task.name))
        deleteSpan.innerText = "Delete"
        deleteSpan.className = "delete"
        newElem.appendChild(deleteSpan)

        if (task.completed) {
            newElem.classList.add("completed")
        }
        tasks.appendChild(newElem)
    })
}

const deleteTask = function (id) {
    tasksArray = tasksArray.filter(task => task.id != id)
    if( tasksArray.length == 0 ) {
        tasks.innerText = "there is no task."
    }
}

function changeTaskStatus (taskId){
    tasksArray.map(task => {
       if(task.id == taskId) {
           (task.completed  == false) ? (task.completed = true) : (task.completed = false)
       }  
       
    })

}
