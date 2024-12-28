// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {SimpleStorage} from "Contract/SimpleStorage.sol";

contract StorageFactory {

    SimpleStorage[] public listOfSimpleStorage;
    

    function newContract() public  {
     SimpleStorage newSimpleStorage = new  SimpleStorage();
     listOfSimpleStorage.push(newSimpleStorage);
    }

    function addNewContact(uint256 contractIndex , string memory name  ,  uint256 addNewNumber) public  {
        SimpleStorage simpleStorageInstance = listOfSimpleStorage[contractIndex];
        simpleStorageInstance.addContact(name, addNewNumber);
    }

    function returnNewContractValue(uint256 contractIndex, uint256 contactIndex) public view returns (string memory, uint256) {
        SimpleStorage simpleStorageInstance = listOfSimpleStorage[contractIndex];
        return simpleStorageInstance.getContact(contactIndex);  
    }

}
