//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation
import AuthenticationServices

/// Request for sign out user
public struct AuthSignOutRequest: AmplifyOperationRequest {

    /// Extra request options defined in `AuthSignOutRequest.Options`
    public var options: Options

    public init(options: Options) {

        self.options = options
    }
}

public extension AuthSignOutRequest {

    struct Options {

        /// Extra plugin specific options, only used in special circumstances when the existing options do not provide
        /// a way to utilize the underlying auth plugin functionality. See plugin documentation for expected
        /// key/values
        public let pluginOptions: Any?

        /// SignOut the user from all devices. Check the plugin specific definition on what global signOut means.
        public let globalSignOut: Bool

#if os(iOS) || os(macOS)
        /// Provide a presentation anchor if you have signedIn using `signInWithWebUI`. The signOut webUI will be presented
        /// in the presentation anchor provided.
        public let presentationAnchorForWebUI: AuthUIPresentationAnchor?

        public init(globalSignOut: Bool = false,
                    presentationAnchor: AuthUIPresentationAnchor? = nil,
                    pluginOptions: Any? = nil) {
            self.globalSignOut = globalSignOut
            self.pluginOptions = pluginOptions
            self.presentationAnchorForWebUI = presentationAnchor
        }
#else
        public init(globalSignOut: Bool = false, pluginOptions: Any? = nil) {
            self.globalSignOut = globalSignOut
            self.pluginOptions = pluginOptions
        }
#endif
    }

}

#if os(iOS) || os(macOS)
extension AuthSignOutRequest.Options {
    public static func presentationAnchor(_ anchor: AuthUIPresentationAnchor) -> AuthSignOutRequest.Options {
        return AuthSignOutRequest.Options(presentationAnchor: anchor)
    }
}
#endif
