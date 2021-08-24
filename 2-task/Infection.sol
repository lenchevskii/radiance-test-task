pragma solidity ^0.8.6;

// pragma ton-solidity ^0.47.0;

contract MemoInfection {
    address public receiver;
    address public transmitter;

    modifier checkOwnerAndAccept() {
        require(msg.pubkey() == tvm.pubkey(), 100);
        tvm.accept();
        _;
    }

    constructor(address receive, address transmit) public checkOwnerAndAccept {

    }

    function sendUint256ToParent(address dest, uint256 value)
        public
        pure
        checkOwnerAndAccept
    {
        dest.transfer(value);
    }

    // function getUint256Result
}
