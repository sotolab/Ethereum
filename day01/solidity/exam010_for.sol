pragma solidity ^0.4.11;

contract Example010 {
    function forFunction() returns (uint) {
        uint n = 0;

        for(uint i = 0; i < 1000; i++) {
            n += (i + 1);
            if (n == 5050) {
                break;
            }
        } 
        return n;
    }
}