
// This module is used for validating data.

// ToDo:
// Add validation methods for 
// String, Integer, Email Addr etc.

import ballerina/io;
import ballerina/mysql;


// sample func, not implemeted yet
# Description
#
# + input - input Parameter Description 
# + return - Return Value Description
public function isValidInteger(int input) returns boolean {
    string regEx = "?<=\s|^)\d+(?=\s|$";
    // boolean|error isInt = input.matches(regEx);
    // if (isInt is error) {
    //     panic isInt;
    // } else {
    //     return isInt;
    // }
}

public function isValidEmail(string input) returns boolean {
    string regex = "";
    boolean|error isEmail = input.matches(regex);
    if (isEmail is error) {
        panic isEmail;
    } else {
        return isEmail;
    }
}

public function isValidPhoneNumber() returns boolean {
    return true;
}

public function isValidString() returns boolean {
    return true;
}