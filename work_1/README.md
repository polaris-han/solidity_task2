# Sample Hardhat Project

This project demonstrates a basic Hardhat use case. It comes with a sample contract, a test for that contract, and a Hardhat Ignition module that deploys that contract.

Try running some of the following tasks:

```shell
npx hardhat help
npx hardhat test
REPORT_GAS=true npx hardhat test
npx hardhat node
npx hardhat ignition deploy ./ignition/modules/Lock.js
```

```shell
# hardhat 2.0 安装
npm install --save-dev hardhat@hh2

# hardhat 初始化项目
npx hardhat init

# dotenv 安装
npm install dotenv

# 部署MTK到sepolia
npx hardhat run ./ignition/modules/deploy.js --network sepolia

# 导入代币到MetaMask
# 代币 - Sepolia网络 - 竖三点 - 添加代币 - 自定义代币 - Sepolia & 代币合约地址 - 导入
```
