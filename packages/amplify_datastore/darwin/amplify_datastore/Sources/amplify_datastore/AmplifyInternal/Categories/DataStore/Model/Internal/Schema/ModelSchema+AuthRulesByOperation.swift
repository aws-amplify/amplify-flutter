//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

public extension Array where Element == AuthRule {

    /// Returns all the `AuthRule` that apply to a given a `ModelOperation`
    /// - Parameter operation: `ModelOperation` operation
    /// - Returns: Auth rules
    func filter(modelOperation operation: ModelOperation) -> [Element] {
        filter { $0.operations.contains(operation) }
    }
}
