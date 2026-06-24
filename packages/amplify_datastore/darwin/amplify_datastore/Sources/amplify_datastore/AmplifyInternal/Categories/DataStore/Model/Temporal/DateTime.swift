//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

extension Temporal {
    /// `Temporal.DateTime` represents a `DateTime` with specific allowable formats.
    ///
    ///  * `.short` => `yyyy-MM-dd'T'HH:mm`
    ///  * `.medium` => `yyyy-MM-dd'T'HH:mm:ss`
    ///  * `.long` => `yyyy-MM-dd'T'HH:mm:ssZZZZZ`
    ///  * `.full` => `yyyy-MM-dd'T'HH:mm:ss.SSSZZZZZ`
    public struct DateTime: TemporalSpec {

        // Inherits documentation from `TemporalSpec`
        public let foundationDate: Foundation.Date

        // Inherits documentation from `TemporalSpec`
        public let timeZone: TimeZone?

        // Inherits documentation from `TemporalSpec`
        public static func now() -> Self {
            Temporal.DateTime(Foundation.Date(), timeZone: .utc)
        }

        /// `Temporal.Time` of this `Temporal.DateTime`.
        public var time: Time {
            Time(foundationDate, timeZone: timeZone)
        }

        // Inherits documentation from `TemporalSpec`
        public init(_ date: Foundation.Date, timeZone: TimeZone? = .utc) {
            let calendar = Temporal.iso8601Calendar
            let components = calendar.dateComponents(
                DateTime.iso8601DateComponents,
                from: date
            )

            self.timeZone = timeZone

            foundationDate = calendar
                .date(from: components) ?? date
        }

        /// `Calendar.Component`s used in `init(_ date:)`
        static let iso8601DateComponents: Set<Calendar.Component> =
        [
            .year,
            .month,
            .day,
            .hour,
            .minute,
            .second,
            .nanosecond,
            .timeZone
        ]
    }
}

// Allow date unit and time unit operations on `Temporal.DateTime`
extension Temporal.DateTime: DateUnitOperable, TimeUnitOperable {}

extension Temporal.DateTime: Sendable { }
