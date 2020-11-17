pragma solidity ^0.4.11;

contract Example015 {
    uint[5] myValue1;
    uint[5] myValue2 = [0, 1, 2, 3, 4];
    uint[5] myValue3;
    uint[5] myValue4;

    function arrayFunction() returns (uint256,uint256,uint256,uint256 ) {
        myValue1[0] = 0;
        myValue1[1] = 1;
        myValue1[2] = 2;
        myValue1[3] = 3;
        myValue1[4] = 4;

        for(uint8 i = 0; i < 5; i++) {
            myValue3[i] = i;
        }
        for(uint8 j = 0; j < 3; j++) {
            myValue3[j] = myValue3[j];
        }

        return (myValue1[0], myValue2[1], myValue3[2], myValue4[3]);
    }
}