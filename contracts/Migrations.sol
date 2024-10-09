// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";

contract Migrations is Initializable {
    address public owner;
    uint public last_completed_migration;

    function initialize() public initializer {
        owner = msg.sender;
    }

    function setCompleted(uint completed) public {
        require(msg.sender == owner, "Only owner can complete migration");
        last_completed_migration = completed;
    }
}
