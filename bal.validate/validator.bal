
// This module is used for validating data.

// ToDo:
// Add validation methods for 
// String, Email Addr etc.

import ballerina/io;


# Check whether @tainted string contains an Integer value
#
# + input - @tainted string  
# + return - Return true if str contains an Integer value
public function isInteger(string input) returns boolean {
    boolean | error isInt = input.matches("\\d+");
    if (isInt is error) {
        panic isInt;
    } else {
        return isInt;
    }
}


# Check whether @tainted string is an email
#
# + input - @tainted string
# + return - Return true if str is a valid e-mail address
public function isAnEmail(string input) returns boolean {
    string regex = "[A-Za-z0-9.-]+@[A-Za-z0-9.-]+";
    boolean | error isEmail = input.matches(regex);
    if (isEmail is error) {
        panic isEmail;
    } else {
        return isEmail;
    }
}


# Remove all special characters of given @tainted string
#
# + input - @tainted string
# + return - Return @untainted string with only [A-Za-z0-9]
public function removeSpecialChars(string input) returns @untainted string{
    string regex = "[^A-Za-z0-9]";
    string cleanInput = input.replaceAll(regex, "");
    return cleanInput;
}


public function isValidPhoneNumber() returns boolean {
    return true;
}

public function isValidString() returns boolean {
    return true;
}