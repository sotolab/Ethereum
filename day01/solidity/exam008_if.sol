pragma solidity ^0.4.11;

contract Example007 {
    function ifFunction() returns (uint){
        uint n = 10;

        if(n > 15) {   // n이 10보다 큰 수인가?
            n++;      // 참(20보다 크면)이면 n을 1 증가 시킵니다, n = n + 1;
        }
        else if(n == 15) {
            n += 5;  // 참(n이 15와 같다면) n에 10을 더합니다, n = n + 5;
        }
        else {
            n--;     // 거짓(15보다 작다면)이면 n을 1 감소 시킵니다, n = n - 1;
        }

        return n;
    }
}