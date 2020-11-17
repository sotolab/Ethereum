pragma solidity ^0.4.11;

contract Example003 {
  function addressValue() {
     address  sender = this;   // this는 현재의 컨트랙트의 주소 입력
     address  recipient = 0x0E12;  //상대방의 주소 입력

     recipient.transfer(5);     //  5 wei 송금
   }
}
