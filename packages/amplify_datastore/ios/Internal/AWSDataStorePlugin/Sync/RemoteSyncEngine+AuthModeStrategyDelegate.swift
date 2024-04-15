//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Amplify
import Combine
import Foundation
import AWSPluginsCore

extension RemoteSyncEngine: AuthModeStrategyDelegate {

    func isUserLoggedIn() async -> Bool {
        if let authProviderFactory = api as? APICategoryAuthProviderFactoryBehavior,
           let oidcAuthProvider = authProviderFactory.apiAuthProviderFactory().oidcAuthProvider() {

            // if OIDC is used as authentication provider
            // use `getLatestAuthToken`
            var isLoggedInWithOIDC = false
            do {
                _ = try await oidcAuthProvider.getLatestAuthToken()
                isLoggedInWithOIDC = true
            } catch {
                isLoggedInWithOIDC = false
            }

            return isLoggedInWithOIDC
        }

        guard let auth = auth else {
            return false
        }

        return (try? await auth.getCurrentUser()) != nil
    }
}
