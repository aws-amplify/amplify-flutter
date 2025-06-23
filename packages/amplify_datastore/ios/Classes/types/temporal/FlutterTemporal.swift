// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0


import Foundation

// Stores an ISO 8601 String to be saved to Appsync
struct FlutterTemporal: TemporalSpec {
    let iso8601: String
    var timeZone: TimeZone?
    init(iso8601String: String) {
        self.iso8601 = iso8601String
        self.foundationDate = Date()
        self.timeZone = TimeZone.current
    }

    var iso8601String: String {
        iso8601
    }

    // Not needed functions
    // In order to properly adhere to "TemporalSpec" these functions must be implemented
    // This class is solely for transmitting a ISO 8601 Date String to Appsync so these other functions are not needed
    var foundationDate: Date
    init(_ date: Date, timeZone: TimeZone? = TimeZone.current) {
        self.iso8601 = ""
        self.foundationDate = date
        self.timeZone = timeZone
    }

    static func now() -> FlutterTemporal {
        return FlutterTemporal(Foundation.Date())
    }

    func iso8601FormattedString(format: TemporalFormat, timeZone: TimeZone) -> String{
        return ""
    }
}
