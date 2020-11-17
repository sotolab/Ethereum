pragma solidity ^0.4.11;

contract Example014 {
    function typeDeduction() returns (uint32, uint32, uint8, uint8 ) {
        uint32 a = 0x87654321; // a has uint32 type
        var b = a; // b has also uint32 type 
        var c = 1; // c has uint8 type

        for (var i = 0; i < 10; i++) {
            // if 1234, this loop is infinite since i has uint8 type and is always smaller than 1234
        }
        return (a, b, c, i);
    }
}