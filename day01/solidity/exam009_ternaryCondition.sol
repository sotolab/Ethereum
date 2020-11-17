pragma solidity ^0.4.11;

contract Example009 {
    function ternary() returns (uint){
        uint n = 10;
        
        return ( n > 15) ? n = 30 : n = 40;
    }
}