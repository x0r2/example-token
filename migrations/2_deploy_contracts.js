const ExampleToken = artifacts.require('./ExampleToken.sol');

module.exports = function (deployer) {
    const startTime = web3.eth.getBlock(web3.eth.blockNumber).timestamp + 100;
    const endTime = startTime + 60;

    deployer.deploy(ExampleToken, startTime, endTime);
};
