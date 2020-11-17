pragma solidity ^0.4.11;

contract Example012 {
    function whileFunction() returns (uint) {
        uint n = 0;

        while(n < 10) {            
            n += 1;
        } 

        return n;
        
    }
}