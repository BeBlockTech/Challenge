const BeBlockTechTokenFactory =
  artifacts.require(`./BeBlockTechTokenFactory.sol`);

module.exports = (deployer) => {
  deployer.deploy(BeBlockTechTokenFactory);
};
