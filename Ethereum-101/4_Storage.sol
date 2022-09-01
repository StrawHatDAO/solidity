// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;


contract Storage {

    uint256 number;

    // Store param num value to store
    function store(uint256 num) public {
        number = num;
    }

    // Return  value of 'number'
    function retrieve() public view returns (uint256){
        return number;
    }
}