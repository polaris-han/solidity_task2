require("@nomicfoundation/hardhat-toolbox");

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: "0.8.28",
  networks: {
    sepolia: {
      url: "https://sepolia.infura.io/v3/eeb0d02f29484bc2bb8c85d6ad47d297", /** meta 云服务 区块链节点地址 */
      accounts: ["c2cce018be8727c917de754949b4e76308b40f17dbd3a8ee9be24f7831eca5e4"]
    }
  }
};
