pragma solidity ^0.5.0;

contract Adoption {
    address[16] public adopters;

    function adopt(uint petId) public returns (uint) {
        require(petId >= 0 && petId <= 15);

        adopters[petId] = msg.sender;

        return petId;
    }

    // memory as opposed to storage gives the data location
    // view is the same as const - means we will not modify the state of the contract
    function getAdopters() public view returns (address[16] memory) {
        return adopters;
    }
}