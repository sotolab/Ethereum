pragma solidity ^0.4.18;

contract productContract {

    //mapping (string => uint) products; // ��ǰ�� ��ǥ���� �����մϴ�.
    mapping (uint8 => string) productList; // ��ǰ�� ����Ʈ�Դϴ�.

    uint8 numberOfProducts; // �� ��ǰ�� ���Դϴ�.
    address contractOwner;

    constructor() public {
        contractOwner = msg.sender;
    }

    // ��ǰ�� �߰��ϴ� �Լ��Դϴ�.
    function addProduct(string pro) public {
        bool add = true;
        for (uint8 i = 0; i < numberOfProducts; i++) {
        
            // ���ڿ� �񱳴� �ؽ��Լ�(sha3)�� ���ؼ� �� �� �ֽ��ϴ�.
            if(keccak256(productList[i]) == keccak256(pro)){
                add = false; break;
            }
        }

        if(add) {
            productList[numberOfProducts] = pro;
            numberOfProducts++;
        }
    }

    //��ǰ ����� ���� �����մϴ�.
    function getNumOfProducts() public constant returns(uint8) {
        return numberOfProducts;
    }

    //��ȣ�� �ش��ϴ� ��ǰ�� �̸��� �����մϴ�.
    function getProductString(uint8 number) public constant returns(string) {
        return productList[number];
    }

    //��ǰ ����� �ĺ��� ��ǥ���� �����մϴ�.
    //function getProduct(string pro) public constant returns(uint) {
    //    return products[pro];
    //}

    //��Ʈ��Ʈ�� �����մϴ�.
    function killContract() public {
        if(contractOwner == msg.sender)
            selfdestruct(contractOwner);
    }
}