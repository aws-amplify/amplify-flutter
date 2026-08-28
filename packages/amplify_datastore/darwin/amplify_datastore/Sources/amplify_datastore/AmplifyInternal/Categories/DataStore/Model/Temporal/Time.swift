//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

extension Temporal {
    /// `Temporal.Time` represents a `Time` with specific allowable formats.
    ///
    ///  * `.short` => `HH:mm`
    ///  * `.medium` => `HH:mm:ss`
    ///  * `.long` => `HH:mm:ss.SSS`
    ///  * `.full` => `HH:mm:ss.SSSZZZZZ`
    public struct Time: TemporalSpec {
        // Inherits documentation from `TemporalSpec`
        public let foundationDate: Foundation.Date

        // Inherits documentation from `TemporalSpec`
        public let timeZone: TimeZone? = .utc

        // Inherits documentation from `TemporalSpec`
        public static func now() -> Self {
            Temporal.Time(Foundation.Date(), timeZone: .utc)
        }

        // Inherits documentation from `TemporalSpec`
        public init(_ date: Foundation.Date, timeZone: TimeZone?) {
            // Sets the date to a fixed instant so time-only operations are safe
            let calendar = Temporal.iso8601Calendar
            var components = calendar.dateComponents(
                [
                    .year,
                    .month,
                    .day,
                    .hour,
                    .minute,
                    .second,
                    .nanosecond,
                    .timeZone
                ],
                from: date
            )
            // This is the same behavior of Foundation.Date when parsed from strings
            // without year-month-day information
            components.year = 2_000
            components.month = 1
            components.day = 1
            self.foundationDate = calendar
                .date(from: components) ?? date
        }

        @available(*, deprecated, message: """
        iso8601DateComponents will be removed from the public API in the future. This isn't
        used to interact with any other public APIs and doesn't provide any value. If you
        believe otherwise, please open an issue at
        `https://github.com/aws-amplify/amplify-ios/issues/new/choose`
        outlining your use case.

        If you're currently using this, please make a property in your own
        module to replace the use of this one.
        """)
        public static var iso8601DateComponents: Set<Calendar.Component> {
            [.hour, .minute, .second, .nanosecond, .timeZone]
        }
    }
}

// Allow time unit operations on `Temporal.Time`
extension Temporal.Time: TimeUnitOperable {}
