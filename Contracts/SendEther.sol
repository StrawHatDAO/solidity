// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;


contract SendEther {
    function sendViaCall(address payable _to) public payable {
        // Call returns a boolean value indicating success or failure.
        // This is the current recommended method to use.
        (bool sent, bytes memory data) = _to.call{value: msg.value}("");
        require(sent, "Failed to send Ether");
    }
}