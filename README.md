# eth-avax-intermideate-module-1
// SPDX-License-Identifier: MIT

pragma solidity 0.8.18;
contract errorhandling{

    uint public num;
    uint public avg_sal;

    function ErrorRequire(uint _salary) public{
        require(_salary > 100,"Salary must be greater than 100");
        num++;
    }

    function ErrorRevert(uint _salary, uint month) public {
        avg_sal= _salary/month;
        if(month == 0){
            revert("month cannot be zero");
        }
        num++;
    }

    function ErrorAssert(uint _salary) public{
        assert(_salary > 100);
        num++;
    }
}
