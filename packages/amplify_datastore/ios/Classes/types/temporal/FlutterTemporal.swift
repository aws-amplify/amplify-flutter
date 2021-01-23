/*
 * Copyright 2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

struct FlutterTemporal: TemporalSpec {
    // Not needed
    static func now() -> FlutterTemporal {
        return FlutterTemporal(Foundation.Date())
    }
    
    // Not needed
    var foundationDate: Date
    
    // Not needed
    init(_ date: Date) {
        self.iso8601 = ""
        self.foundationDate = Date()
    }
    
    let iso8601: String
    init(iso8601String: String) {
        self.iso8601 = iso8601String
        self.foundationDate = Date()
    }
    var iso8601String: String {
        iso8601
    }
    
    // Not needed
    func iso8601FormattedString(format: TemporalFormat, timeZone: TimeZone) -> String{
        return "";
    }
}
