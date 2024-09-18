// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract MaxNumberContract {

    function findMaxNumber(uint256[] memory numbers) external pure returns (uint256) {
       uint256 max = numbers[0];
       for(uint256 i=0;i<numbers.length;i++){
          if(max<numbers[i]){
            max=numbers[i];
          }
       }
       return max;
    }
}
