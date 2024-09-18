// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract RightAngledTriangle {
    //To check if a triangle with side lenghts a,b,c is a right angled triangle
    function check(uint a, uint b, uint c) public pure returns (bool) {
        if(a==b&&b==c){
            return false;
        }
        uint max = a;
        uint result = (b*b)+(c*c);
        if(b>a&&b>c){
            max=b;
            result = (a*a)+(c*c);
            if(result==(b*b)){
                return true;
            }
        }else if(c>a&&c>b){
            max=c;
            result = (a*a)+(b*b);
            if(result==(c*c)){
                return true;
            }
        }
        if(result==(a*a)){
            return true;
        }
        return false;
    }
}
