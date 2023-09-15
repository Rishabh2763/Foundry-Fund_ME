// SPDX_License_Identifier: MIT

pragma solidity ^0.8.18;

import {Test,console} from 'forge-std/Test.sol';
import {FundMe} from '../src/FuneMe.sol';

contract FundMeTest is Test{
  FundMe fundMe=new FundMe();
  function setUp() external{

  }
  function testMinimumDollarIsFive() public{
    assertEq(fundMe.MINIMUM_USD(),5e18);
  }
  function testOwnerIsMsgSender() public{
    console.log(fundMe.i_owner());
    console.log(msg.sender);
    assertEq(fundMe.i_owner(),address(this));
  }

  function testPriceFeedVersionIsAccurate() public{
    assertEq(fundMe.getVersion(),4);
  }
}