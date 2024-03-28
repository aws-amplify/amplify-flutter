//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Amplify

public protocol AuthCognitoIdentityProvider {
    /// Return the most recent Result of fetching the AWS Cognito Identity Pools identity ID
    func getIdentityId() -> Result<String, AuthError>

    /// Return the most recent Result of the current user’s sub claim (user ID)
    func getUserSub() -> Result<String, AuthError>
}

public extension AuthCognitoIdentityProvider where Self: AWSAuthSessionBehavior {
    func getIdentityId() -> Result<String, AuthError> {
        identityIdResult
    }

    func getUserSub() -> Result<String, AuthError> {
        userSubResult
    }
}
