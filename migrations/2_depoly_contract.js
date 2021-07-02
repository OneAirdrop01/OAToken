const OA = artifacts.require( "OA.sol" );

module.exports = function ( deployer )
{
    // Use deployer to state migration tasks.
    deployer.deploy( OA, "2500000000000000000000000", "One Airdrop", "OA" );
};
