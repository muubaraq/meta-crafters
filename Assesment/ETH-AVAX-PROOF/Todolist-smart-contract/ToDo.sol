// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract TodoList {
    struct Task {
        uint id;
        string content;
        bool isCompleted;
    }

    mapping(uint => Task) public tasks;
    uint public taskCount;

    function addTask(string memory content) external {
        require(bytes(content).length > 0, "Task content cannot be empty");
        taskCount++;
        tasks[taskCount] = Task(taskCount, content, false);
    }

    function completeTask(uint taskId) external {
        require(taskId > 0 && taskId <= taskCount, "Task does not exist");
        Task storage task = tasks[taskId];
        require(!task.isCompleted, "Task already completed");
        task.isCompleted = true;
    }

    function removeTask(uint taskId) external {
        require(taskId > 0 && taskId <= taskCount, "Task does not exist");
        assert(tasks[taskId].isCompleted);
        delete tasks[taskId];
    }

    function updateTask(uint taskId, string memory newContent) external {
        if (taskId == 0 || taskId > taskCount) {
            revert("Task does not exist");
        }
        Task storage task = tasks[taskId];
        if (task.isCompleted) {
            revert("Cannot update a completed task");
        }
        require(bytes(newContent).length > 0, "New content cannot be empty");
        task.content = newContent;
    }

    function getTask(uint taskId) external view returns (Task memory) {
        require(taskId > 0 && taskId <= taskCount, "Task does not exist");
        return tasks[taskId];
    }

    function getTaskCount() external view returns (uint) {
        return taskCount;
    }
}