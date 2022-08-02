/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

import Amplify

import Foundation

// Stores an ISO 8601 String to be saved to Appsync
struct FlutterTemporal: TemporalSpec {
    let iso8601: String
    init(iso8601String: String) {
        self.iso8601 = iso8601String
        self.foundationDate = Date()
    }

    var iso8601String: String {
        iso8601
    }

    // Not needed functions
    // In order to properly adhere to "TemporalSpec" these functions must be implemented
    // This class is solely for transmitting a ISO 8601 Date String to Appsync so these other functions are not needed
    var foundationDate: Date
    init(_ date: Date) {
        self.iso8601 = ""
        self.foundationDate = date
    }

    static func now() -> FlutterTemporal {
        return FlutterTemporal(Foundation.Date())
    }

    func iso8601FormattedString(format: TemporalFormat, timeZone: TimeZone) -> String{
        return ""
    }
}
