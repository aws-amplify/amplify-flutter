$version: "1.0"
namespace com.test

use aws.protocols#awsJson1_1

@awsJson1_1
service Test {
    version: "1.0.0",
    operations: [MapInput],
    errors: [ServerError]
}

list IntList {
    member: Integer
}

map MapOfLists {
    key: String,
    value: IntList
}

@http(method: "POST", uri: "/input/map")
operation MapInput {
    input: MapInputRequest,
    errors: [MapInputError]
}

@input
structure MapInputRequest {
    mapOfLists: MapOfLists
}

@error("client")
@retryable
@httpError(429)
structure MapInputError {}

@error("server")
structure ServerError {
    @required
    message: String
}