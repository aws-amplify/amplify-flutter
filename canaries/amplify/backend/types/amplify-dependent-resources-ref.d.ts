export type AmplifyDependentResourcesAttributes = {
  "analytics": {
    "canaries": {
      "Id": "string",
      "Region": "string",
      "appName": "string"
    }
  },
  "api": {
    "canaries": {
      "GraphQLAPIEndpointOutput": "string",
      "GraphQLAPIIdOutput": "string"
    }
  },
  "auth": {
    "canaries741cf74e": {
      "AppClientID": "string",
      "AppClientIDWeb": "string",
      "IdentityPoolId": "string",
      "IdentityPoolName": "string",
      "UserPoolArn": "string",
      "UserPoolId": "string",
      "UserPoolName": "string"
    }
  },
  "function": {
    "canaries741cf74ePreSignup": {
      "Arn": "string",
      "LambdaExecutionRole": "string",
      "LambdaExecutionRoleArn": "string",
      "Name": "string",
      "Region": "string"
    }
  },
  "storage": {
    "canaries": {
      "BucketName": "string",
      "Region": "string"
    }
  }
}