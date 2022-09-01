// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0; 

// coding convention to uppercase constant variables

contract ConstantsAndImmutable {

    // Constants are variables that cannot be modified.
    // Their value is hard coded and using constants can save gas cost.
    address public constant MY_ADDRESS = 0x777788889999AaAAbBbbCcccddDdeeeEfFFfCcCc;
    uint public constant MY_UINT = 123;

    //Values of immutable variables can be set inside the constructor but cannot be modified afterwards.
    address public immutable MY_ADDRESS;
    uint public immutable MY_UINT;

    constructor(uint _myUint) {
        MY_ADDRESS = msg.sender; 
        MY_UINT = _myUint;
    }
}