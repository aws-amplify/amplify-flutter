//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Amplify
import Foundation

public protocol AuthCognitoTokensProvider {
    func getCognitoTokens() -> Result<AuthCognitoTokens, AuthError>
}

public protocol AuthCognitoTokens {

    var idToken: String {get}

    var accessToken: String {get}

    var refreshToken: String {get}

}
