//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Allows use of `isEmpty` on optional `Collection`s:
///     let optionalString: String? = getSomeOptionalString()
///     guard optionalString.isEmpty else { return }
///
/// `Collection` provides the `isEmpty` property to declare whether an instance has any members. But it’s also pretty
/// common to expand the definition of “empty” to include nil. Unfortunately, the standard library doesn't include an
/// extension mapping the Collection.isEmpty property, so testing Optional collections means you have to unwrap:
///
///     var optionalString: String?
///     // Do some work
///     if let s = optionalString where s != "" {
///         // s is not empty or nil
///     }
///
/// Or slightly more succinctly, use the nil coalescing operator “??”:
///
///     if !(optionalString ?? "").isEmpty {
///         // optionalString is not empty or nil
///     }
///
/// This extension simply unwraps the `Optional` and returns the value of `isEmpty` for non-nil collections, and returns
/// `true` if the collection is nil.
extension Optional where Wrapped: Collection {
    /// Returns `true` for nil values, or `value.isEmpty` for non-nil values.
    var isEmpty: Bool {
        switch self {
        case .some(let val):
            return val.isEmpty
        case .none:
            return true
        }
    }
}
