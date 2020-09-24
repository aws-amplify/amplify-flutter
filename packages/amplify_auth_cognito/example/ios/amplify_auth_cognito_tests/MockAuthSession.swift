/*
* Copyright 2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
*
* Licensed under the Apache License, Version 2.0 (the "License").
* You may not use this file except in compliance with the License.
* A copy of the License is located at
*
*  http://aws.amazon.com/apache2.0
*
* or in the "license" file accompanying this file. This file is distributed
* on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
* express or implied. See the License for the specific language governing
* permissions and limitations under the License.
*/

import Amplify
import AmplifyPlugins
import AWSPluginsCore
import AWSCore
import AWSMobileClient

class MockCredentials: AuthAWSCredentials {
    var accessKey: String
    
    var secretKey: String
    
    init (accessKey: String, secretKey: String) {
        self.accessKey = accessKey
        self.secretKey = secretKey
    }
}

class MockTokens: AuthCognitoTokens {
    var idToken: String
    
    var accessToken: String
    
    var refreshToken: String
    
    init (idToken: String, accessToken: String, refreshToken: String) {
        self.idToken = idToken
        self.accessToken = accessToken
        self.refreshToken = refreshToken
    }
}

class MockSession: AuthSession {
    var isSignedIn: Bool
    
    init(isSignedIn: Bool) {
        self.isSignedIn = isSignedIn
    }
}

class MockCognitoSession: AuthSession, AuthAWSCredentialsProvider, AuthCognitoTokensProvider, AuthCognitoIdentityProvider {
    var isSignedIn: Bool
    
    func getAWSCredentials() -> Result<AuthAWSCredentials, AuthError> {
       return awsCredentialsResult
    }
    
    func getCognitoTokens() -> Result<AuthCognitoTokens, AuthError> {
        return cognitoTokensResult
    }
    
    func getIdentityId() -> Result<String, AuthError> {
        return identityIdResult
    }
    
    func getUserSub() -> Result<String, AuthError> {
        return userSubResult
    }
    
    public let userSubResult: Result<String, AuthError>

    public let identityIdResult: Result<String, AuthError>

    public let awsCredentialsResult: Result<AuthAWSCredentials, AuthError>

    public let cognitoTokensResult: Result<AuthCognitoTokens, AuthError>
    
    init(isSignedIn: Bool,
         userSubResult: Result<String, AuthError>,
         identityIdResult: Result<String, AuthError>,
         awsCredentialsResult: Result<AuthAWSCredentials, AuthError>,
         cognitoTokensResult: Result<AuthCognitoTokens, AuthError>) {
        self.isSignedIn = isSignedIn
        self.userSubResult = userSubResult
        self.identityIdResult = identityIdResult
        self.awsCredentialsResult = awsCredentialsResult
        self.cognitoTokensResult = cognitoTokensResult
    }
    
}

