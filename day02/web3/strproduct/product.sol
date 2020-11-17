pragma solidity ^0.4.18;

contract productContract {

    uint8 numberOfProducts; // 총 제품의 수입니다.
    address contractOwner;

    struct myStruct {
        uint   number;
        string productName;
        string locaton;
    }

    myStruct[] public productes;

    constructor() public {        
        contractOwner = msg.sender;
    }

    function addProStru (uint _initNumber, string _firstString, string _secondString) public {
        productes.push(myStruct(_initNumber,_firstString,_secondString)) -1;
        numberOfProducts++;
    }

    //제품 등록의 수를 리턴합니다.
    function getNumOfProducts() public constant returns(uint8) {
        return numberOfProducts;
    }

    //번호에 해당하는 제품의 이름을 리턴합니다.
    function getProductStruct(uint _index) public view returns (uint, string, string) {
        return (productes[_index].number, productes[_index].productName, productes[_index].locaton);
    }

    //컨트랙트를 삭제합니다.
    function killContract() public {
        if(contractOwner == msg.sender)
            selfdestruct(contractOwner);
    }
}