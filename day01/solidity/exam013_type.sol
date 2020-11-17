pragma solidity ^0.4.11;

contract Example013 {
    function typeFunction() returns (int8, uint32, uint32, uint16 ) {
        int8 x = 11;		    // x is 11
        uint32 y = uint32(x);	// y is 11

        uint32 a = 0x87654321;	// a is 2271560481
        uint16 b = uint16(a);	// b is 17185

        return ( x, y, a, b);
    }
}