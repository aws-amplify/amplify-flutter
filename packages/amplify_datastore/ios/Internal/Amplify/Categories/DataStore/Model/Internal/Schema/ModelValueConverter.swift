//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Establishes how `Model` fields should be converted to and from different targets (e.g. SQL and GraphQL).
/// - Warning: Although this has `public` access, it is intended for internal use and should not be used directly
///   by host applications. The behavior of this may change without warning.
public protocol ModelValueConverter {

    /// The base type on the source (i.e. the `Model` property type)
    associatedtype SourceType

    /// The type on the target (i.e. the `SQL` value type)
    associatedtype TargetType

    /// Converts a source value of a certain type to the target type
    ///
    /// - Parameters:
    ///   - source: the value from the `Model`
    ///   - fieldType: the type of the `Model` field
    /// - Returns: the converted value
    static func convertToTarget(from source: SourceType, fieldType: ModelFieldType) throws -> TargetType

    /// Converts a target value of a certain type to the `Model` field type
    ///
    /// - Parameters:
    ///   - target: the value from the target
    ///   - fieldType: the type of the `Model` field
    /// - Returns: the converted value to the expected `ModelFieldType`
    static func convertToSource(from target: TargetType, fieldType: ModelFieldType) throws -> SourceType

}

/// Extension with reusable JSON encoding/decoding utilities.
extension ModelValueConverter {

    static var jsonDecoder: JSONDecoder {
        JSONDecoder(dateDecodingStrategy: ModelDateFormatting.decodingStrategy)
    }

    static var jsonEncoder: JSONEncoder {
        let encoder = JSONEncoder(dateEncodingStrategy: ModelDateFormatting.encodingStrategy)
        encoder.outputFormatting = .sortedKeys
        return encoder
    }

    /// - Warning: Although this has `public` access, it is intended for internal & codegen use and should not be used
    ///   directly by host applications. The behavior of this may change without warning. Though it is not used by host
    ///   application making any change to these `public` types should be backward compatible, otherwise it will be a
    ///   breaking change.
    public static func toJSON(_ value: Encodable) throws -> String? {
        let data = try jsonEncoder.encode(value.eraseToAnyEncodable())
        return String(data: data, encoding: .utf8)
    }

    /// - Warning: Although this has `public` access, it is intended for internal & codegen use and should not be used
    ///   directly by host applications. The behavior of this may change without warning. Though it is not used by host
    ///   application making any change to these `public` types should be backward compatible, otherwise it will be a
    ///   breaking change.
    public static func fromJSON(_ value: String) throws -> Any? {
        return try JSONSerialization.jsonObject(with: Data(value.utf8))
    }
}
