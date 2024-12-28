// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

contract SimpleStorage {

    struct ContactDetails {
        string name;
        uint256 number;
    }

    ContactDetails[] public contactBook;
    
    mapping(string => uint256) public findNumber;

    function addContact(string memory contactName, uint256 contactNumber) public {
        ContactDetails memory newContact = ContactDetails({
            name: contactName,
            number: contactNumber
        });
        contactBook.push(newContact);

        // Update the mapping with the contact number
        findNumber[contactName] = contactNumber;
    }

    function getContact(uint256 contactIndex) public view returns (string memory, uint256) {
        // Return the contact's details by index
        ContactDetails memory contact = contactBook[contactIndex];
        return (contact.name, contact.number);
    }
}
