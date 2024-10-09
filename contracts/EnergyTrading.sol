// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;
contract Energytrading {
    struct Trade {
        address buyer;
        uint256 amount;
        uint256 price;
    }

    mapping(address => uint256) public balances;
    Trade[] public trades;

    function tradeEnergy(uint256 _amount, uint256 _price) public {
        require(_amount > 0, "Amount must be greater than 0");
        require(_price > 0, "Price must be greater than 0");
        
        balances[msg.sender] += _amount;
        trades.push(Trade(msg.sender, _amount, _price));
    }

    function balanceOf(address _owner) public view returns (uint256) {
        return balances[_owner];
    }

    function getTrades() public view returns (Trade[] memory) {
        return trades;
    }
}
