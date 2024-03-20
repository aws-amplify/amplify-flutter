//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

public struct AuthUpdateAttributeResult {

    /// Informs whether the user attribute is complete or not
    ///
    public let isUpdated: Bool

    /// Shows the next step required to complete update attribute flow.
    ///
    public let nextStep: AuthUpdateAttributeStep

    public init(isUpdated: Bool, nextStep: AuthUpdateAttributeStep) {
        self.isUpdated = isUpdated
        self.nextStep = nextStep
    }
}
