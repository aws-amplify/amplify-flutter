$version: "2"

namespace com.amazonaws.amplify.core

structure AWSApiConfig {
    @required
    apis: AWSApiEndpointMap
}

map AWSApiEndpointMap {
    key: String
    value: AWSApiEndpointConfig
}

union AWSApiEndpointConfig {
    appSync: AWSAppSyncEndpointConfig
    apiGateway: AWSApiGatewayEndpointConfig
    rest: AWSRestEndpointConfig
}

@documentation("Configuration for a non-AWS REST endpoint")
structure AWSRestEndpointConfig {
    @required
    endpoint: Uri

    // A non-API Gateway REST endpoint does not support out-of-the-box
    // authorization modes, but can include authorization using custom
    // headers on the request.
}

@mixin
@documentation("Common configuration for a AWS API endpoints")
structure AWSBaseEndpointConfig {
    @required
    endpoint: Uri

    @required
    @documentation("The AWS region where the API is hosted. Used for SigV4 signing.")
    region: AWSRegion

    @required
    authMode: AWSApiAuthorizationMode
}

structure AWSAppSyncEndpointConfig with [AWSBaseEndpointConfig] {
    @documentation("Additional authorization modes supported by the API. Used by DataStore in multi-auth decisions.")
    additionalAuthModes: AWSApiAuthorizationModes = []
}

structure AWSApiGatewayEndpointConfig with [AWSBaseEndpointConfig] {}

// enum AWSApiAuthorizationMode {
//     NONE
//     API_KEY
//     IAM
//     USER_POOLS
//     OIDC
//     FUNCTION
// }

union AWSApiAuthorizationMode {
    none: Unit
    apiKey: ApiKey
    iam: Unit
    oidc: Unit
    userPools: Unit
    function: Unit
}

string ApiKey

list AWSApiAuthorizationModes {
    member: AWSApiAuthorizationMode
}
