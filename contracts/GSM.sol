//SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

/// @title GSM Token
/// @author Ace
/// @notice 'xGSM' Token contract (HRC20), pre-mint and owner mint implementation of standard ERC20

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract xGSM is ERC20,Ownable{

    constructor() ERC20("Pre Galactic Space Money","xGSM"){
        _mint(0xC3Bea1CCebBFbDBF57712A085790314dC08a3812, 3_000_000 ether);
    }    

    function ownerMint(address _to,uint _amount) external onlyOwner{
        _mint(_to,_amount);
    }

}