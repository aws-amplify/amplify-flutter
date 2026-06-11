//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

public struct TemporalFormat {
    let dateFormat: String
    let dateTimeFormat: String
    let timeFormat: String

    /**
        dateFormat is `yyyy-MM-dd`
        dateTimeFormat is `yyyy-MM-dd'T'HH:mm`
        timeFormat is `HH:mm`
     */
    public static let short = TemporalFormat(
        dateFormat: "yyyy-MM-dd",
        dateTimeFormat: "yyyy-MM-dd'T'HH:mm",
        timeFormat: "HH:mm"
    )

    /**
        dateFormat is `yyyy-MM-ddZZZZZ`
        dateTimeFormat is `yyyy-MM-dd'T'HH:mm:ss`
        timeFormat is `HH:mm:ss`
     */
    public static let medium = TemporalFormat(
        dateFormat: "yyyy-MM-ddZZZZZ",
        dateTimeFormat: "yyyy-MM-dd'T'HH:mm:ss",
        timeFormat: "HH:mm:ss"
    )

    /**
        dateFormat is `yyyy-MM-ddZZZZZ`
        dateTimeFormat is `yyyy-MM-dd'T'HH:mm:ssZZZZZ`
        timeFormat is `HH:mm:ss.SSS`
     */
    public static let long = TemporalFormat(
        dateFormat: "yyyy-MM-ddZZZZZ",
        dateTimeFormat: "yyyy-MM-dd'T'HH:mm:ssZZZZZ",
        timeFormat: "HH:mm:ss.SSS"
    )

    /**
        dateFormat is `yyyy-MM-ddZZZZZ`
        dateTimeFormat is `yyyy-MM-dd'T'HH:mm:ss.SSSZZZZZ`
        timeFormat is `HH:mm:ss.SSSZZZZZ`
     */
    public static let full = TemporalFormat(
        dateFormat: "yyyy-MM-ddZZZZZ",
        dateTimeFormat: "yyyy-MM-dd'T'HH:mm:ss.SSSZZZZZ",
        timeFormat: "HH:mm:ss.SSSZZZZZ"
    )

    public static let allCases = [
        TemporalFormat.full,
        .long,
        .medium,
        .short
    ]

    private func keyPath(for type: TemporalSpec.Type) -> KeyPath<TemporalFormat, String> {
        let keyPath: KeyPath<TemporalFormat, String>
        if type == Temporal.Time.self {
            keyPath = \TemporalFormat.timeFormat
        } else if type == Temporal.Date.self {
            keyPath = \TemporalFormat.dateFormat
        } else {
            keyPath = \TemporalFormat.dateTimeFormat
        }
        return keyPath
    }

    @usableFromInline
    internal static func sortedFormats(for type: TemporalSpec.Type) -> [String] {
        let formats: [String]
        // If the TemporalSpec is `Date`, let's only return `.full` and `.short`
        // because `.medium`, `.long`, and `.full` are all the same format.
        // If the formats ever differ, this needs to be updated.
        if type == Temporal.Date.self {
            formats = [TemporalFormat.full, .short]
                .map { $0(for: type) }
        } else {
            formats = Self.allCases
                .map { $0(for: type) }
        }
        return formats
    }

    @usableFromInline
    internal func callAsFunction(for type: TemporalSpec.Type) -> String {
        self[keyPath: keyPath(for: type)]
    }
}
