//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

extension Optional {
    ///
    /// Performing side effect function when data is exist
    /// - parameters:
    ///     - then: a closure that takes wrapped data as a parameter
    @_spi(OptionalExtension)
    public func ifSome(_ then: (Wrapped) throws -> Void) rethrows {
        if case .some(let wrapped) = self {
            try then(wrapped)
        }
    }
}
