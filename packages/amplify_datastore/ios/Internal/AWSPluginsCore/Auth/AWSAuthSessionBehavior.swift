//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation
import Amplify

/// Defines the contract for an AuthSession that can vend AWS credentials and store a user ID
/// (`sub`) for the underlying OIDC-compliant authentication provider such as Cognito user pools.
/// Concrete types that use Cognito identity pools to obtain AWS credentials can also vend the
/// associated identityID.
///
/// **The `isSignedIn` property**
///
/// Types conforming to the `AuthSession` protocol support an `isSignedIn` flag. `isSignedIn` is true if a user has
/// successfully completed a `signIn` flow, and has not subsequently signed out.
public protocol AWSAuthSessionBehavior<Tokens>: AuthSession {

    /// The concrete type holding the OIDC tokens from the authentication provider. 
    /// Generally, this type will have at least methods for retrieving an identity token and an access token.
    associatedtype Tokens

    /// The result of the most recent attempt to get AWS Credentials. There is no guarantee that the credentials
    /// are not expired, but conforming types may have logic in place to automatically refresh the credentials.
    /// The credentials may be fore either the unauthenticated or authenticated role, depending on the 
    /// configuration of the identity pool and the tokens used to retrieve the identity ID from Cognito.
    ///
    /// If the most recent attempt caused an error, the result will contain the details of the error.
    var awsCredentialsResult: Result<AWSTemporaryCredentials, AuthError> { get }

    // swiftlint:disable line_length
    /// The result of the most recent attempt to get a
    /// [Cognito identity pool identity ID](https://docs.aws.amazon.com/cognitoidentity/latest/APIReference/API_GetId.html#CognitoIdentity-GetId-response-IdentityId).
    /// The identityID may represent either an unauthenticated or authenticated identity, 
    /// depending on the configuration of the identity pool and the tokens used to
    /// retrieve the identity ID from Cognito.
    ///
    /// If the most recent attempt caused an error, the result will contain the details of the error.
    var identityIdResult: Result<String, AuthError> { get }
    // swiftlint:enable line_length

    /// The result of the most recent attempt to get the current user's `sub` (unique User ID).
    /// Depending on the underlying implementation, the details of the user ID may vary,
    /// but it is expected that this value is the `sub` claim of the OIDC identity and access tokens.
    ///
    /// If the most recent attempt caused an error, the result will contain the details of the error.
    var userSubResult: Result<String, AuthError> { get }

    /// The result of the most recent attempt to get the current user's `sub` (unique User ID). 
    /// Depending on the underlying implementation,
    /// the details of the tokens may vary, but it is expected that the type will have at least methods for
    /// retrieving an identity token and an access token.
    ///
    /// If the most recent attempt caused an error, the result will contain the details of the error.
    var oidcTokensResult: Result<Tokens, AuthError> { get }
}
