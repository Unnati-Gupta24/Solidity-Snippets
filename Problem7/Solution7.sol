// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract RemoveVowels {

    function removeVowels(string memory _input) public pure returns (string memory){
        //heya first convert the string into array
        bytes memory input = bytes(_input);
        //now initialize answer array
        bytes memory answer = new bytes(input.length);
        uint256 u = 0;

        for(uint256 i=0;i<input.length;i++){
            if(input[i] != 'a' && input[i] != 'e' && input[i] != 'i' &&
                input[i] != 'o' && input[i] != 'u' &&
                input[i] != 'A' && input[i] != 'E' && input[i] != 'I' &&
                input[i] != 'O' && input[i] != 'U'
            ) {
                answer[u] = input[i];
                u++;
            }
        }
        bytes memory trimmedAnswer = new bytes(u);
        for (uint256 k = 0; k < u; k++) {
            trimmedAnswer[k] = answer[k];
        }
        return string(trimmedAnswer);
    }
}
