// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;


import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

contract PriceConsumer 
{
    AggregatorV3Interface internal price_feed ;
    
    constructor()
    {
        price_feed = AggregatorV3Interface(0x5c13b249846540F81c093Bc342b5d963a7518145) ; 
        
    }

   //returns the floor price of cryptopunks 
   
   function getLatestPrice() public view returns (int)
    {
        (,int price ,,,) = price_feed.latestRoundData();
        return price ;
    }
}
