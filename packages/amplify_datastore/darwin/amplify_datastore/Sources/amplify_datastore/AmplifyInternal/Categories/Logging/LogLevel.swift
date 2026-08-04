//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

/// Log levels are modeled as Ints to allow for easy comparison of levels
///
public extension Amplify {
    enum LogLevel: Int, Codable {
        case none
        case error
        case warn
        case info
        case debug
        case verbose

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            if let rawString = try? container.decode(String.self).lowercased() {
                switch rawString {
                case "error":
                    self = .error
                case "warn":
                    self = .warn
                case "info":
                    self = .info
                case "debug":
                    self = .debug
                case "verbose":
                    self = .verbose
                case "none":
                    self = .none
                default:
                    let context = DecodingError.Context(codingPath: [], debugDescription: "No matching LogLevel found")
                    throw DecodingError.valueNotFound(LogLevel.self, context)
                }
            } else if let rawInt = try? container.decode(Int.self), let value = LogLevel(rawValue: rawInt) {
                self = value
            } else {
                let context = DecodingError.Context(codingPath: [], debugDescription: "Unable to decode LogLevel")
                throw DecodingError.dataCorrupted(context)
            }

        }
    }
}
public typealias LogLevel = Amplify.LogLevel

extension LogLevel: Comparable {
    public static func < (lhs: LogLevel, rhs: LogLevel) -> Bool {
        lhs.rawValue < rhs.rawValue
    }
}
