
document.addEventListener('DOMContentLoaded', function () {
    const taskInput = document.getElementById('taskInput');
    const addTaskButton = document.getElementById('addTask');
    const taskList = document.getElementById('taskList');

    addTaskButton.addEventListener('click', function () {
        const taskText = taskInput.value.trim();
        if (taskText === '') return;

        const taskItem = document.createElement('li');
        taskItem.innerHTML = `
            <span>${taskText}</span>
            <button class="delete-btn">Delete</button>
        `;

        taskList.appendChild(taskItem);
        taskInput.value = '';

        const deleteButton = taskItem.querySelector('.delete-btn');
        deleteButton.addEventListener('click', function () {
            taskList.removeChild(taskItem);
        });
    });

    // Allow pressing Enter to add a task
    taskInput.addEventListener('keydown', function (event) {
        if (event.key === 'Enter') {
            addTaskButton.click();
        }
    });
});
