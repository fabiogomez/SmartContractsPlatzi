// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Project{
    uint256 public idNumber;
    bool public isActive;
    string public name;
    string public description;
    string public urlVideo;
    uint256 public totalAmount;
    uint256 public currentAmount;

    
    
    //send tokens to project
    function fundProject(address payable receiver) public payable {
        receiver.transfer(msg.value);
    }
    function changeProjectState(bool _isActive) public {
        isActive = _isActive;
    }
}
