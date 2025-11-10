// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract BeggingContract {
    address public owner;               // 合约主人（讨饭王）

    // 捐赠记录：地址 => 累计金额
    mapping(address => uint256) public donations;

    // 事件：每次捐赠都会 emit
    event Donation(address indexed donor, uint256 amount);

    constructor() {
        owner = msg.sender;
    }

    /**
     * 捐赠函数：任何人都能打钱
     */
    function donate() public payable {
        require(msg.value > 0, "Give me more ETH");
        donations[msg.sender] += msg.value;
        emit Donation(msg.sender, msg.value);
    }

    /**
     * 查账：看某个地址捐了多少
     */
    function getDonation(address _donor) external view returns (uint256) {
        return donations[_donor];
    }

    /**
     * 提款：只有合约 owner 能提走全部余额
     */
    function withdraw() external onlyOwner {
        uint256 balance = address(this).balance;
        require(balance > 0, "Nothing to withdraw");
        // 使用 call{value:} 防止 2300 gas 限制
        (bool success, ) = owner.call{value: balance}("");
        require(success, "Transfer failed");
    }

    /**
     * 余额查看：合约当前 ETH 余额
     */
    function getContractBalance() external view returns (uint256) {
        return address(this).balance;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Not owner");
        _;
    }
}