// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract EvenOddContract {
  
    function isEven(uint256 number) external pure returns (bool) {
       if(number%2==0){
        return true;
       }
       return false;
    }
}
