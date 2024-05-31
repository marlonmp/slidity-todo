// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.0 <0.9.0;

contract Tasks {
    struct Task {
        bool is_done;
        string title;
        string description;
        uint256 expires_at;
        uint256 created_at;
    }

    // mapping(address => Task[]) public tasks;
    Task[] public tasks;

    address public owner;

    constructor() {
        owner = msg.sender;
    }

    function addTask(string calldata _title, string calldata _description, uint48 _expires_at) public {
        Task memory task = Task({
            is_done: false,
            title: _title,
            description: _description,
            expires_at: _expires_at,
            created_at: block.timestamp
        });

        tasks.push(task);
    }
}