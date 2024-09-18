// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract CryptoTrader {

    function roundTrip(int[] memory walletBalances, int[] memory networkFees) public pure returns (int) {

                int totalbalance = 0;
                int currentbalance = 0;
                int startindex = 0;
                
                for(uint256 i=0;i<networkFees.length;i++){
                    totalbalance += walletBalances[i] - networkFees[i];
                    currentbalance += walletBalances[i] - networkFees[i];

                  if (currentbalance < 0) {
                    startindex = int(i) + 1;
                    currentbalance = 0;
                }
                }

                if(totalbalance>=0){
                    return startindex;
                }else{
                    return -1;
                }

        
    }
}
