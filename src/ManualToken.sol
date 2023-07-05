// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract ManualToken {
    mapping(address => uint256) public s_balances;

    function name() public pure returns (string memory) {
        return "Manual Token";
    }

    function totalSupply() public pure returns (uint256) {
        return 100 ether; // 100000000000000000000
    }

    function decimals() public pure returns (uint8) {
        return 18;
    }

    function transfer(
        address _to,
        uint256 _amount
    ) public returns (bool success) {
        require(_to != address(0x0));
        require(s_balances[msg.sender] >= _amount);
        require(s_balances[_to] + _amount >= s_balances[_to]);

        uint256 previousBalances = s_balances[msg.sender] + s_balances[_to];

        s_balances[msg.sender] -= _amount;
        s_balances[_to] += _amount;

        assert(s_balances[msg.sender] + s_balances[_to] == previousBalances);

        return true;
    }
}
