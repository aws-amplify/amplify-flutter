//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// `TimeUnit` for use in adding and subtracting units from `Temporal.DateTime`, and `Temporal.Time`.
///
/// `TimeUnit` uses `Calendar.Component` under the hood to ensure date oddities are accounted for.
///
///     let twoHoursFromNow = Temporal.Time.now() + .hours(1)
///     let fiveMinutesAgo = Temporal.Time.now() - .minutes(5)
///     let yesterday = Temporal.Date.now() - .days(1)
///     let sixMonthsAgo = Temporal.Date.now() - .months(6)
///
/// - Attention: **Don't** use `TimeUnit` to calculate dates, use `DateUnit` instead.
///   Also make sure to use the most applicable `Unit`, e.g. don't use `.minutes(60)` if you really want `.hours(1)`.
///   There are not always 24 hours in a day, 60 minutes in an hour, etc.
public struct TimeUnit {
    public let calendarComponent: Calendar.Component
    public let value: Int

    /// One second. Equivalent to 1 x `Calendar.Component.second`
    public static let oneSecond: TimeUnit = .seconds(1)

    /// One minute. Equivalent to 1 x `Calendar.Component.minute`
    public static let oneMinute: TimeUnit = .minutes(1)

    /// One hour. Equivalent to 1 x `Calendar.Component.hour`
    public static let oneHour: TimeUnit = .hours(1)

    /// `TimeUnit` amount of hours.
    ///
    /// One hour is 1 x `Calendar.Component.hour`
    ///
    ///     let twoHours = TimeUnit.hours(2)
    ///     // or
    ///     let twoHours: TimeUnit = .hours(2)
    ///
    /// - Parameter value: Amount of hours in this `TimeUnit`
    /// - Returns: A `TimeUnit` with the defined number of hours.
    public static func hours(_ value: Int) -> Self {
        .init(calendarComponent: .hour, value: value)
    }

    /// `TimeUnit` amount of minutes.
    ///
    /// One minute is 1 x `Calendar.Component.minute`
    ///
    ///     let fiveMinutes = TimeUnit.minutes(5)
    ///     // or
    ///     let fiveMinutes: TimeUnit = .minutes(5)
    ///
    /// - Parameter value: Amount of minutes in this `TimeUnit`
    /// - Returns: A `TimeUnit` with the defined number of minutes.
    public static func minutes(_ value: Int) -> Self {
        .init(calendarComponent: .minute, value: value)
    }

    /// `TimeUnit` amount of seconds.
    ///
    /// One second is 1 x `Calendar.Component.seconds`
    ///
    ///     let thirtySeconds = TimeUnit.seconds(30)
    ///     // or
    ///     let thirtySeconds: TimeUnit = .seconds(30)
    ///
    /// - Parameter value: Amount of seconds in this `TimeUnit`
    /// - Returns: A `TimeUnit` with the defined number of seconds.
    public static func seconds(_ value: Int) -> Self {
        .init(calendarComponent: .second, value: value)
    }

    /// `TimeUnit` amount of milliseconds.
    ///
    /// One second is 1 x `Calendar.Component.nanosecond` \* `NSEC_PER_MSEC`
    ///
    ///     let oneMillisecond = TimeUnit.milliseconds(1)
    ///     // or
    ///     let oneMillisecond: TimeUnit = .milliseconds(1)
    ///
    /// - Parameter value: Amount of milliseconds in this `TimeUnit`
    /// - Returns: A `TimeUnit` with the defined number of milliseconds.
    public static func milliseconds(_ value: Int) -> Self {
        .init(calendarComponent: .nanosecond, value: value * Int(NSEC_PER_MSEC))
    }

    /// `TimeUnit` amount of nanoseconds.
    ///
    /// One second is 1 x `Calendar.Component.nanosecond`
    ///
    ///     let tenNanoseconds = TimeUnit.nanoseconds(10)
    ///     // or
    ///     let tenNanoseconds: TimeUnit = .nanoseconds(10)
    ///
    /// - Parameter value: Amount of nanoseconds in this `TimeUnit`
    /// - Returns: A `TimeUnit` with the defined number of nanoseconds.
    public static func nanoseconds(_ value: Int) -> Self {
        .init(calendarComponent: .nanosecond, value: value)
    }
}

/// Supports addition and subtraction of `Temporal.Time` and `Temporal.DateTime` with `TimeUnit`
public protocol TimeUnitOperable {
    static func + (left: Self, right: TimeUnit) -> Self
    static func - (left: Self, right: TimeUnit) -> Self
}

extension TemporalSpec where Self: TimeUnitOperable {

    /// Add a `TimeUnit` to a `Temporal.Time` or `Temporal.DateTime`
    /// - Parameters:
    ///   - left: `Temporal.Time` or `Temporal.DateTime`
    ///   - right: `TimeUnit` to add to `left`
    /// - Returns: A new `Temporal.Time` or `Temporal.DateTime` the `TimeUnit` was added to.
    public static func + (left: Self, right: TimeUnit) -> Self {
        return left.add(value: right.value, to: right.calendarComponent)
    }

    /// Subtract a `TimeUnit` from a `Temporal.Time` or `Temporal.DateTime`
    /// - Parameters:
    ///   - left: `Temporal.Time` or `Temporal.DateTime`
    ///   - right: `TimeUnit` to subtract from `left`
    /// - Returns: A new `Temporal.Time` or `Temporal.DateTime` the `TimeUnit` was subtracted from.
    public static func - (left: Self, right: TimeUnit) -> Self {
        return left.add(value: -right.value, to: right.calendarComponent)
    }
}
