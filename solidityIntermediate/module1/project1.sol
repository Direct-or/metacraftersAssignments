pragma solidity ^0.8.0;

contract SmartContract {
    uint256 public value;

    // Function to set the value, requires input value to be greater than 0
    function setValue(uint256 _value) public {
        require(_value > 0, "Value must be greater than 0."); // Using require to validate input
        value = _value;
    }

    // Function to assert that the input value is equal to the stored value
    function assertValue(uint256 _value) public {
        assert(_value == value); // Using assert to check for internal errors
    }

    // Function to intentionally revert the transaction and return an error message
    function revertValue() public {
        require(false, "This transaction will be reverted."); // Using require with a false condition to revert the transaction
    }
}
