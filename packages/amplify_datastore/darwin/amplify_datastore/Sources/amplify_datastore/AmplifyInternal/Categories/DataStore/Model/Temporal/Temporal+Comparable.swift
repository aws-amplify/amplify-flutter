//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Adds conformance to the [Comparable](https://developer.apple.com/documentation/swift/comparable) protocol.
/// Implementations are required to implement the `==` and `<` operators. Swift
/// takes care of deriving the other operations from those two.
///
/// - Note: the implementation simply delegates to the `iso8601String` formatted date.
extension TemporalSpec where Self: Comparable {

    public static func == (lhs: Self, rhs: Self) -> Bool {
        return lhs.iso8601FormattedString(format: .full, timeZone: .utc)
            == rhs.iso8601FormattedString(format: .full, timeZone: .utc)
    }

    public static func < (lhs: Self, rhs: Self) -> Bool {
        return lhs.iso8601FormattedString(format: .full, timeZone: .utc)
             < rhs.iso8601FormattedString(format: .full, timeZone: .utc)
    }
}

extension Temporal.Date: Comparable {}
extension Temporal.DateTime: Comparable {}
extension Temporal.Time: Comparable {}
