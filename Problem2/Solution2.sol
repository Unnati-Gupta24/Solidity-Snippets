// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract FactorialContract {

    function calculateFactorial(uint256 n) public pure returns (uint256) {
        if(n==0){
            return 1;
        }
        uint256 answer = 1;
        while(n!=1){
            answer = answer*n;
            n = n-1;
        }
        return answer;
     
    }
}
