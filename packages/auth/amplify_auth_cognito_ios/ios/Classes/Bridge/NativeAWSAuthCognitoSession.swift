// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import Foundation
import Amplify
import AWSPluginsCore

struct NativeAWSAuthCognitoSession: AuthSession,
                                       AuthAWSCredentialsProvider,
                                       AuthCognitoTokensProvider,
                                       AuthCognitoIdentityProvider {
    let isSignedIn: Bool
    let identityIdResult: Result<String, AuthError>
    let awsCredentialsResult: Result<AuthAWSCredentials, AuthError>
    let userSubResult: Result<String, AuthError>
    let cognitoTokensResult: Result<AuthCognitoTokens, AuthError>
    
    init(from session: NativeAuthSession) {
        self.isSignedIn = session.isSignedIn.boolValue
        self.userSubResult = session.userSub != nil ?
            .success(session.userSub!) :
            .failure(.unknown("Could not retrieve user sub", nil))
        self.identityIdResult = session.identityId != nil ?
            .success(session.identityId!) :
            .failure(.unknown("Could not retrieve identity ID", nil))
        self.cognitoTokensResult = session.userPoolTokens != nil ?
            .success(session.userPoolTokens!) :
            .failure(.unknown("Could not retrieve user pool tokens", nil))
        self.awsCredentialsResult = session.awsCredentials != nil ?
            .success(session.awsCredentials!.asAuthAWSCredentials) :
            .failure(.unknown("Could not retrieve AWS credentials", nil))
    }
    
    public func getAWSCredentials() -> Result<AuthAWSCredentials, AuthError> {
        awsCredentialsResult
    }
    
    public func getCognitoTokens() -> Result<AuthCognitoTokens, AuthError> {
        cognitoTokensResult
    }
    
    public func getIdentityId() -> Result<String, AuthError> {
        identityIdResult
    }
    
    public func getUserSub() -> Result<String, AuthError> {
        userSubResult
    }
    
}
