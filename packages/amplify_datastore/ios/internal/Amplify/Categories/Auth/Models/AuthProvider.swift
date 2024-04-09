//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Supported auth providers that help in federated sign in
///
/// You can use these auth providers to directly sign in to one of the user's social provider and then
/// federate them to the auth plugin's underlying service. For example in the api
/// `Amplify.Auth.signInWithWebUI(for:presentationAnchor:)` you can pass in a provider
/// in the `for:` parameter which will directly show a authentication view for the passed in auth provider.
public enum AuthProvider {

    public typealias ProviderName = String

    /// Auth provider that uses Login with Amazon
    case amazon

    /// Auth provider that uses Sign in with Apple
    case apple

    /// Auth provider that uses Facebook Login
    case facebook

    /// Auth provider that uses Google Sign-In
    case google

    /// Auth provider that uses Twitter Sign-In
    case twitter

    /// Auth provider that uses OpenID Connect Protocol
    case oidc(ProviderName)

    /// Auth provider that uses Security Assertion Markup Language standard
    case saml(ProviderName)

    /// Custom auth provider that is not in this list, the associated string value will be the identifier used by
    /// the plugin service.
    case custom(ProviderName)
}

extension AuthProvider: Codable { }

extension AuthProvider: Equatable { }
