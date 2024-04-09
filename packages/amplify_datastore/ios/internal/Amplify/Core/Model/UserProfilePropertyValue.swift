//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Properties of a `UserProfile` can store values of different common types.
/// This protocol is an encapsulation of said types.
///
/// Currently supported types are `String`, `Int`, `Double`,  `Bool` and `Array<String>`.
///
/// If the underlying service does not support one of these, it is expected that the plugin will
/// cast it to another supported type. For example, casting a `Bool` to a `String`.
public protocol UserProfilePropertyValue {}

extension String: UserProfilePropertyValue {}
extension Int: UserProfilePropertyValue {}
extension Double: UserProfilePropertyValue {}
extension Bool: UserProfilePropertyValue {}
extension Array: UserProfilePropertyValue where Element == String {}
