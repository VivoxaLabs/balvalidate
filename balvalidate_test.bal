import ballerina/http;
import ballerina/io;

import bal.validate;

service hello on new http:Listener(9090) {

    resource function sayHello(http:Caller caller, http:Request request) {

        http:Response response = new;

        response.setTextPayload("Hello Ballerina!");



        _ = caller -> respond(response);
    }
}


public function main() {
    
    // calling validator
    io:println(validate:isValidInteger());
}
