// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract NearestLargerNumber {
    int[] public numbers;

    // Constructor to initialize the array of integers
    constructor(int[] memory _numbers) {
        numbers = _numbers;
    }

    // Function to find the index of the nearest larger number
    function nearestLargerIndex(uint i) public view returns (int) {
        require(i < numbers.length, "Index out of bounds");

        int target = numbers[i];
        int nearestIndex = -1; // Default value indicating no larger number found
        uint minDistance = type(uint).max; // Start with a large distance

        // Check both directions from index i
        for (uint j = 0; j < numbers.length; j++) {
            if (numbers[j] > target) {
                uint distance = (j >= i) ? (j - i) : (i - j);
                if (distance < minDistance) {
                    minDistance = distance;
                    nearestIndex = int(j); // Store the index of the larger number
                }
            }
        }

        return nearestIndex; // Return the index or -1 if no larger number found
    }

    // Function to get the array of numbers (for testing purposes)
    function getNumbers() public view returns (int[] memory) {
        return numbers;
    }
}
