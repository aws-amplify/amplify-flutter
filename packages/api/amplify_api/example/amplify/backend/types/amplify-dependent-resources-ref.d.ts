export type AmplifyDependentResourcesAttributes = {
    "function": {
        "apiintegmultiauth131fe55a131fe55aPreSignup": {
            "Name": "string",
            "Arn": "string",
            "LambdaExecutionRole": "string",
            "Region": "string"
        },
        "apiintegmultiauth0aef1d4a": {
            "Name": "string",
            "Arn": "string",
            "Region": "string",
            "LambdaExecutionRole": "string"
        }
    },
    "auth": {
        "apiintegmultiauth131fe55a131fe55a": {
            "IdentityPoolId": "string",
            "IdentityPoolName": "string",
            "UserPoolId": "string",
            "UserPoolArn": "string",
            "UserPoolName": "string",
            "AppClientIDWeb": "string",
            "AppClientID": "string"
        }
    },
    "api": {
        "apiintegmultiauth": {
            "GraphQLAPIKeyOutput": "string",
            "GraphQLAPIIdOutput": "string",
            "GraphQLAPIEndpointOutput": "string"
        },
        "multiAuthRest": {
            "RootUrl": "string",
            "ApiName": "string",
            "ApiId": "string"
        }
    }
}