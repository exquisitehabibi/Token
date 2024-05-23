// SPDX-License-Identifier: MIT
pragma solidity >=0.8.18;

contract MyToken {

    // public variables here
    string public tokenname = "PROTOKEN";
    string public tokenabrv = "PRN";
    uint public totalsupply = 0;

    // mapping variable here
    mapping (address => uint) public balances;

    // mint function
    function mint (address addr, uint val) public {
        totalsupply += val;
        balances[addr] += val;
    }

    // burn function
    function burn (address addr, uint val) public {
        if(balances[addr]>= val){
            totalsupply -= val;
            balances[addr] -= val;
        }
    }
}
