//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Types that conform to the `Persistable` protocol represent values that can be
/// persisted in a database.
///
/// Core Types that conform to this protocol:
/// - `Bool`
/// - `Double`
/// - `Int`
/// - `String`
/// - `Temporal.Date`
/// - `Temporal.DateTime`
/// - `Temporal.Time`
/// - Warning: Although this has `public` access, it is intended for internal use and should not be used directly
///   by host applications. The behavior of this may change without warning.
public protocol Persistable: Encodable {}

extension Bool: Persistable {}
extension Double: Persistable {}
extension Int: Persistable {}
extension String: Persistable {}
extension Temporal.Date: Persistable {}
extension Temporal.DateTime: Persistable {}
extension Temporal.Time: Persistable {}

struct PersistableHelper {

    /// Polymorphic utility that allows two persistable references to be checked
    /// for equality regardless of their concrete type.
    ///
    /// - Note: Maintainers need to keep this utility updated when news types that conform
    /// to `Persistable` are added.
    ///
    /// - Parameters:
    ///   - lhs: a reference to a Persistable object
    ///   - rhs: another reference
    /// - Returns: `true` in case both values are equal or `false` otherwise
    /// - Warning: Although this has `public` access, it is intended for internal & codegen use and should not be used
    ///   directly by host applications. The behavior of this may change without warning. Though it is not used by host
    ///   application making any change to these `public` types should be backward compatible, otherwise it will be a
    ///   breaking change.
    public static func isEqual(_ lhs: Persistable?, _ rhs: Persistable?) -> Bool {
        if lhs == nil && rhs == nil {
            return true
        }
        switch (lhs, rhs) {
        case let (lhs, rhs) as (Bool, Bool):
            return lhs == rhs
        case let (lhs, rhs) as (Temporal.Date, Temporal.Date):
            return lhs == rhs
        case let (lhs, rhs) as (Temporal.DateTime, Temporal.DateTime):
            return lhs == rhs
        case let (lhs, rhs) as (Temporal.Time, Temporal.Time):
            return lhs == rhs
        case let (lhs, rhs) as (Double, Double):
            return lhs == rhs
        case let (lhs, rhs) as (Int, Int):
            return lhs == rhs
        case let (lhs, rhs) as (String, String):
            return lhs == rhs
        default:
            return false
        }
    }

    // We are promoting Int to Double in the case where we are comparing these two types
    public static func isEqual(_ lhs: Any?, _ rhs: Persistable?) -> Bool {
        if lhs == nil && rhs == nil {
            return true
        }
        switch (lhs, rhs) {
        case let (lhs, rhs) as (Bool, Bool):
            return lhs == rhs
        case let (lhs, rhs) as (Temporal.Date, Temporal.Date):
            return lhs == rhs
        case let (lhs, rhs) as (Temporal.DateTime, Temporal.DateTime):
            return lhs == rhs
        case let (lhs, rhs) as (Temporal.Time, Temporal.Time):
            return lhs == rhs
        case let (lhs, rhs) as (Double, Double):
            return lhs == rhs
        case let (lhs, rhs) as (Int, Int):
            return lhs == rhs
        case let (lhs, rhs) as (Int, Double):
            return Double(lhs) == rhs
        case let (lhs, rhs) as (Double, Int):
            return lhs == Double(rhs)
        case let (lhs, rhs) as (String, String):
            return lhs == rhs
        default:
            return false
        }
    }

    // We are promoting Int to Double in the case where we are comparing these two types
    public static func isLessOrEqual(_ lhs: Any?, _ rhs: Persistable?) -> Bool {
        if lhs == nil && rhs == nil {
            return true
        }
        switch (lhs, rhs) {
        // case Bool Removed
        case let (lhs, rhs) as (Temporal.Date, Temporal.Date):
            return lhs <= rhs
        case let (lhs, rhs) as (Temporal.DateTime, Temporal.DateTime):
            return lhs <= rhs
        case let (lhs, rhs) as (Temporal.Time, Temporal.Time):
            return lhs <= rhs
        case let (lhs, rhs) as (Double, Double):
            return lhs <= rhs
        case let (lhs, rhs) as (Int, Int):
            return lhs <= rhs
        case let (lhs, rhs) as (Int, Double):
            return Double(lhs) <= rhs
        case let (lhs, rhs) as (Double, Int):
            return lhs <= Double(rhs)
        case let (lhs, rhs) as (String, String):
            return lhs <= rhs
        default:
            return false
        }
    }

    // We are promoting Int to Double in the case where we are comparing these two types
    public static func isLessThan(_ lhs: Any?, _ rhs: Persistable?) -> Bool {
        if lhs == nil && rhs == nil {
            return false
        }
        switch (lhs, rhs) {
        // case Bool Removed
        case let (lhs, rhs) as (Temporal.Date, Temporal.Date):
            return lhs < rhs
        case let (lhs, rhs) as (Temporal.DateTime, Temporal.DateTime):
            return lhs < rhs
        case let (lhs, rhs) as (Temporal.Time, Temporal.Time):
            return lhs < rhs
        case let (lhs, rhs) as (Double, Double):
            return lhs < rhs
        case let (lhs, rhs) as (Int, Int):
            return lhs < rhs
        case let (lhs, rhs) as (Int, Double):
            return Double(lhs) < rhs
        case let (lhs, rhs) as (Double, Int):
            return lhs < Double(rhs)
        case let (lhs, rhs) as (String, String):
            return lhs < rhs
        default:
            return false
        }
    }

    // We are promoting Int to Double in the case where we are comparing these two types
    public static func isGreaterOrEqual(_ lhs: Any?, _ rhs: Persistable?) -> Bool {
        if lhs == nil && rhs == nil {
            return true
        }
        switch (lhs, rhs) {
        // case Bool Removed
        case let (lhs, rhs) as (Temporal.Date, Temporal.Date):
            return lhs >= rhs
        case let (lhs, rhs) as (Temporal.DateTime, Temporal.DateTime):
            return lhs >= rhs
        case let (lhs, rhs) as (Temporal.Time, Temporal.Time):
            return lhs >= rhs
        case let (lhs, rhs) as (Double, Double):
            return lhs >= rhs
        case let (lhs, rhs) as (Int, Int):
            return lhs >= rhs
        case let (lhs, rhs) as (Int, Double):
            return Double(lhs) >= rhs
        case let (lhs, rhs) as (Double, Int):
            return lhs >= Double(rhs)
        case let (lhs, rhs) as (String, String):
            return lhs >= rhs
        default:
            return false
        }
    }

    // We are promoting Int to Double in the case where we are comparing these two types
    public static func isGreaterThan(_ lhs: Any?, _ rhs: Persistable?) -> Bool {
        if lhs == nil && rhs == nil {
            return false
        }
        switch (lhs, rhs) {
        // case Bool Removed
        case let (lhs, rhs) as (Temporal.Date, Temporal.Date):
            return lhs > rhs
        case let (lhs, rhs) as (Temporal.DateTime, Temporal.DateTime):
            return lhs > rhs
        case let (lhs, rhs) as (Temporal.Time, Temporal.Time):
            return lhs > rhs
        case let (lhs, rhs) as (Double, Double):
            return lhs > rhs
        case let (lhs, rhs) as (Int, Int):
            return lhs > rhs
        case let (lhs, rhs) as (Double, Int):
            return lhs > Double(rhs)
        case let (lhs, rhs) as (Int, Double):
            return Double(lhs) > rhs
        case let (lhs, rhs) as (String, String):
            return lhs > rhs
        default:
            return false
        }
    }

    public static func isBetween(_ start: Persistable, _ end: Persistable, _ value: Any?) -> Bool {
        if value == nil {
            return false
        }
        return isGreaterOrEqual(value, start) && isLessOrEqual(value, end)
    }
}
