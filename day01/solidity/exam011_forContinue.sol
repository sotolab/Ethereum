pragma solidity ^0.4.11;

contract Example011 {
    function forContinue() returns (uint) {
        uint n = 0;

        for(uint i = 1; i <= 30; i++) {
            if (i % 3 == 0) {
                 continue;
            }
            n += i;
        } 
        return n;
    }
}