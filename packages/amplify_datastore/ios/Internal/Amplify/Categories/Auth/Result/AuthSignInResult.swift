//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

public struct AuthSignInResult {

    /// Informs whether the user is signedIn or not.
    ///
    /// When this value is false, it means that there are more steps to follow for the signIn flow. Check `nextStep`
    /// to understand the next flow. If `isSignedIn` is true, signIn flow has been completed.
    public var isSignedIn: Bool {
        switch nextStep {
        case .done:
            return true
        default:
            return false
        }
    }

    /// Shows the next step required to complete the signIn flow.
    ///
    public var nextStep: AuthSignInStep

    public init(nextStep: AuthSignInStep) {
        self.nextStep = nextStep
    }
}
