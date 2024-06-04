//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Defines a common format for a `TemporalSpec` unit used in operations. It is a tuple
/// of `Calendar.Component`, such as `.year`, and an integer value. Those two are later
/// used in date operations such "4 hours from now" and "2 months ago".
@available(*, deprecated, message: "This protocol will be removed in the future.")
public protocol TemporalUnit {
    /// The `Calendar.Component` (e.g. `.year`, `.hour`)
    var component: Calendar.Component { get }

    /// The integer value. Must be a valid value for the given `component`
    var value: Int { get }
}
