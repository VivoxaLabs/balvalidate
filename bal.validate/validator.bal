
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
    boolean | error isInt = input.matches("[0-9]+");
    if (isInt is error) {
        panic isInt;
    } else {
        return isInt;
    }
}


# Check whether @tainted string is an email
#
# + input - @tainted string
# + return - Return true if input is a valid e-mail address
public function isValidEmail(string input) returns boolean {
    string regex = "[A-Za-z0-9.-]+@[A-Za-z0-9.-]+";
    boolean | error isEmail = input.matches(regex);
    if (isEmail is error) {
        panic isEmail;
    } else {
        return isEmail;
    }
}


# Check whether @tainted string is a phone number
#
# + input - @tainted string 
# + countryCode - Country Code (ex: 1) 
# + length - Number length without country code
# + return - Return true if input is a valid phone number
public function isValidPhoneNumber(string input, int countryCode, int length) returns boolean {
    string regex = "[+]" + <string> countryCode + "[0-9]{" + <string> length + "}";
    boolean | error isPhoneNo = input.matches(regex);
    if (isPhoneNo is error){
        panic isPhoneNo;
    } else {
        return isPhoneNo;
    }
}


# Check whether @tainted string is a valid URL
#
# + input - @tainted string 
# + return - Return true if input is a valid URL
public function isValidURL(string input) returns boolean {
    string regex = "http(s)?://[A-Za-z0-9-]+[.][A-Za-z0-9.]+[A-Za-z-0-9._~:/?#@!$&'()*,;=]+";
    boolean | error isURL = input.matches(regex);
    if (isURL is error){
        panic isURL;
    } else {
        return isURL;
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