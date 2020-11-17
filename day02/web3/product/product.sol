pragma solidity ^0.4.18;

contract productContract {

    //mapping (string => uint) products; // 제품의 득표수를 저장합니다.
    mapping (uint8 => string) productList; // 제품의 리스트입니다.

    uint8 numberOfProducts; // 총 제품의 수입니다.
    address contractOwner;

    constructor() public {
        contractOwner = msg.sender;
    }

    // 제품을 추가하는 함수입니다.
    function addProduct(string pro) public {
        bool add = true;
        for (uint8 i = 0; i < numberOfProducts; i++) {
        
            // 문자열 비교는 해쉬함수(sha3)를 통해서 할 수 있습니다.
            if(keccak256(productList[i]) == keccak256(pro)){
                add = false; break;
            }
        }

        if(add) {
            productList[numberOfProducts] = pro;
            numberOfProducts++;
        }
    }

    //제품 등록의 수를 리턴합니다.
    function getNumOfProducts() public constant returns(uint8) {
        return numberOfProducts;
    }

    //번호에 해당하는 제품의 이름을 리턴합니다.
    function getProductString(uint8 number) public constant returns(string) {
        return productList[number];
    }

    //제품 등록의 후보의 득표수를 리턴합니다.
    //function getProduct(string pro) public constant returns(uint) {
    //    return products[pro];
    //}

    //컨트랙트를 삭제합니다.
    function killContract() public {
        if(contractOwner == msg.sender)
            selfdestruct(contractOwner);
    }
}