pragma solidity ^0.4.11;

contract Example007 {
    uint count;
    address from;
    address to;

    function Example007(uint _count, address _from, address _to) {
        count = _count;
        from = _from;
        to = _to;
    }
}

contract Example007Creator {
    Example007 e = new Example007(2018, 0x12, 0x98);
}
