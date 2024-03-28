//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

public extension InternalTaskValue where Self: InternalTaskResult {

    /// Value from result
    var value: Success {
        get async throws {
            try await result.get()
        }
    }

}
