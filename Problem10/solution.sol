//Solution
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DiamondTracker {
    // Mapping to store the count of diamonds based on their weight
    mapping(uint => uint) private diamondWeights;

    // Function to import diamonds with their respective weights
    function importDiamonds(uint[] memory weights) public {
        for (uint i = 0; i < weights.length; i++) {
            require(weights[i] >= 0 && weights[i] <= 1000, "Weight must be between 0 and 1000");
            diamondWeights[weights[i]] += 1; // Increment the count for the given weight
        }
    }

    // Function to get the number of diamonds of a specific weight
    function availableDiamonds(uint weight) public view returns (uint) {
        return diamondWeights[weight]; // Return the count of diamonds for the specified weight
    }
}
