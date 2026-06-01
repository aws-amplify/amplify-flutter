//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

public struct AuthSignUpResult {

    /// Indicate whether the signUp flow is completed.
    public var isSignUpComplete: Bool {
        switch nextStep {
        case .done:
            return true
        default:
            return false
        }
    }

    /// Shows the next step required to complete the signUp flow.
    ///
    public let nextStep: AuthSignUpStep

    public let userID: String?

    public init(
        _ nextStep: AuthSignUpStep,
        userID: String? = nil
    ) {
        self.nextStep = nextStep
        self.userID = userID
    }
}
