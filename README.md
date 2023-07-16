// SPDX-License-Identifier: MIT
// smart contract that implements the require(), assert() and revert() statements.
pragma solidity 0.8.18;

contract Error_Handling_Contract {
    uint public bal;

    constructor() {
        bal = 0;
    }

    // require() statement
    function depositing_amount(uint _amount) external {
        require(_amount > 0, "**-- Depositing amount must be greater than zero, please enter valid amount to deposit --**");
        bal += _amount;
    }

    // assert() statement
    function Return_Balance() external view returns (uint) {
        assert(bal >= 0); 
        return bal;
    }

    // revert() statement
    function withdrawing_amount(uint _amount) external {
        require(_amount > 0, "**-- Withdrawal amount must be greater than zero, please enter valid amount to withdraw --**"); 
        if (_amount > bal) {   
            if(bal == 0){
                revert("**-- Balance is 0, withdrawal not possible --**");
            }
        revert("**-- Insufficient balance --**"); 
        }
        else {
            bal -= _amount;
        }
    }

}

this code has been used to create smart contract for the asked statements
