const ExampleToken = artifacts.require('./ExampleToken.sol');

module.exports = function (deployer, network, accounts) {
    const startTime = web3.eth.getBlock(web3.eth.blockNumber).timestamp + 1;
    const endTime = startTime + (86400 * 10);

    const rate = new web3.BigNumber(10000);
    const cap = new web3.BigNumber(web3.toWei(1000, 'ether'));

    const wallet = accounts[0];

    deployer.deploy(ExampleToken, startTime, endTime, rate, wallet, cap);
};
