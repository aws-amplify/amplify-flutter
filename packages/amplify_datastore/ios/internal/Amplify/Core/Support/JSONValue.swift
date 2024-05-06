//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// A utility type that allows us to represent an arbitrary JSON structure
@dynamicMemberLookup
public enum JSONValue {
    case array([JSONValue])
    case boolean(Bool)
    case number(Double)
    case object([String: JSONValue])
    case string(String)
    case null
}

extension JSONValue: Codable {
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()

        if let value = try? container.decode([String: JSONValue].self) {
            self = .object(value)
        } else if let value = try? container.decode([JSONValue].self) {
            self = .array(value)
        } else if let value = try? container.decode(Double.self) {
            self = .number(value)
        } else if let value = try? container.decode(Bool.self) {
            self = .boolean(value)
        } else if let value = try? container.decode(String.self) {
            self = .string(value)
        } else {
            self = .null
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()

        switch self {
        case .array(let value):
            try container.encode(value)
        case .boolean(let value):
            try container.encode(value)
        case .number(let value):
            try container.encode(value)
        case .object(let value):
            try container.encode(value)
        case .string(let value):
            try container.encode(value)
        case .null:
            try container.encodeNil()
        }
    }

}

extension JSONValue: Equatable { }

extension JSONValue: ExpressibleByArrayLiteral {
    public init(arrayLiteral elements: JSONValue...) {
        self = .array(elements)
    }
}

extension JSONValue: ExpressibleByBooleanLiteral {
    public init(booleanLiteral value: Bool) {
        self = .boolean(value)
    }
}

extension JSONValue: ExpressibleByDictionaryLiteral {
    public init(dictionaryLiteral elements: (String, JSONValue)...) {
        let dictionary = elements.reduce([String: JSONValue]()) { acc, curr in
            var newValue = acc
            newValue[curr.0] = curr.1
            return newValue
        }
        self = .object(dictionary)
    }
}

extension JSONValue: ExpressibleByFloatLiteral {
    public init(floatLiteral value: Double) {
        self = .number(value)
    }
}

extension JSONValue: ExpressibleByIntegerLiteral {
    public init(integerLiteral value: Int) {
        self = .number(Double(value))
    }
}

extension JSONValue: ExpressibleByNilLiteral {
    public init(nilLiteral: ()) {
        self = .null
    }
}

extension JSONValue: ExpressibleByStringLiteral {
    public init(stringLiteral value: String) {
        self = .string(value)
    }
}

extension JSONValue {

    public var asObject: [String: JSONValue]? {
        if case .object(let object) = self {
            return object
        }

        return nil
    }

    public var asArray: [JSONValue]? {
        if case .array(let array) = self {
            return array
        }

        return nil
    }

    public var stringValue: String? {
        if case .string(let string) = self {
            return string
        }

        return nil
    }

    public var intValue: Int? {
        if case .number(let double) = self,
           double < Double(Int.max) && double >= Double(Int.min) {
            return Int(double)
        }
        return nil
    }

    public var doubleValue: Double? {
        if case .number(let double) = self {
            return double
        }

        return nil
    }

    public var booleanValue: Bool? {
        if case .boolean(let bool) = self {
            return bool
        }

        return nil
    }

    public var isNull: Bool {
        if case .null = self {
            return true
        }

        return false
    }
}
