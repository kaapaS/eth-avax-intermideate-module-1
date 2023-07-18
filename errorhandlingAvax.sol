// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Registration {
    mapping(address => bool) public registeredUsersList;
    uint AddressCount=0;
    uint maxAddress=2;

    
    //require() statement
    function Register_the_address() public {
        require(!registeredUsersList[msg.sender], "**-- This address has been already registered --**");
        registeredUsersList[msg.sender] = true;
        AddressCount+=1;
    }
    function unregister_the_address() public {
        require(registeredUsersList[msg.sender], "**-- Not Registered!!, Register yourself before proceeding --**");
        registeredUsersList[msg.sender] = false;
        AddressCount-=1;
    }
    
    //assert() statement
    function Assert() public view  {      
        assert(AddressCount >= maxAddress );
        revert("**-- No more user can be registered --**");
    }
    
    //revert() statement
    function Revert() public view {
        if(AddressCount==0){
                revert("**--  Please register some address, List is empty --**");
            }
        if (maxAddress <= AddressCount) {
            revert("**--  Please do not register more users, list is full --**");
        }
    }
}

