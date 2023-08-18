$version: "2"

namespace com.amazonaws.amplify.core

structure ApiConfig {
    @required
    endpoints: ApiEndpointList
}

list ApiEndpointList {
    member: ApiEndpointConfig
}

union ApiEndpointConfig {
    appSync: AppSyncEndpointConfig
    apiGateway: ApiGatewayEndpointConfig
    rest: RestEndpointConfig
}

// TODO: JS allows setting both `service` and `custom_header` fields on top of `endpoint`
// https://github.com/aws-amplify/amplify-js/blob/b5f8346a896b5f94dc75d5f53164ce1443e56df8/packages/api-rest/src/RestAPI.ts#L298

@documentation("""
    Configuration for a non-APIGW REST endpoint. 
    
    Automatic authorization is not supported for these endpoints. To configure authorization, use
    a custom HTTP client which can add the required headers to each request.
""")
structure RestEndpointConfig {
    @required
    @documentation("A name which can be used to identify this API")
    name: String

    @required
    endpoint: Uri

    // A non-API Gateway REST endpoint does not support out-of-the-box
    // authorization modes, but can include authorization using custom
    // headers on the request.
}

@mixin
@documentation("Common configuration for AWS API endpoints.")
structure BaseEndpointConfig {
    @required
    @documentation("A name which can be used to identify this API")
    name: String

    @required
    endpoint: Uri

    @required
    @documentation("The AWS region where the API is hosted. Used for SigV4 signing.")
    region: AWSRegion

    @required
    authMode: ApiAuthorizationMode
}

@documentation("Configuration for an AWS AppSync endpoint.")
structure AppSyncEndpointConfig with [BaseEndpointConfig] {
    @documentation("Additional authorization modes supported by the API. Used by the API/DataStore categories for multi-auth decisions.")
    additionalAuthModes: ApiAuthorizationModes = []
}

@documentation("Configuration for an AWS API Gateway endpoint.")
structure ApiGatewayEndpointConfig with [BaseEndpointConfig] {}

@documentation("""
    An authorization mode of an AWS API.

    APIs may accept multiple authorization modes which must be configured independently.  
""")
union ApiAuthorizationMode {
    none: Unit
    apiKey: ApiKey
    iam: Unit
    oidc: Unit
    userPools: Unit
    function: Unit
}

string ApiKey

list ApiAuthorizationModes {
    member: ApiAuthorizationMode
}
