import ballerina/http;
import ballerina/io;

import bal.validate;

//Sample Data
int SAMPLE_INTEGER = 100;
string SAMPLE_STRINGINT = "100";
string SAMPLE_STRING = "balvalidate";
string SAMPLE_EMAIL = "balvalidate@vivoxalabs.com";
string SAMPLE_PHONENUMBER = "000-1111111";

// commented for better performence in testing
// service hello on new http:Listener(9090) {

//     resource function sayHello(http:Caller caller, http:Request request) {

//         http:Response response = new;

//         response.setTextPayload("Hello Ballerina!");

//         _ = caller -> respond(response);
//     }
// }


public function main() {
    
    // calling validator
    io:println(validate:isInteger(SAMPLE_STRINGINT));
}
