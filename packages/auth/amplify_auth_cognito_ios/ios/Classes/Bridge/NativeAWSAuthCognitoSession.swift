// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

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
