//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Adds JSON serialization behavior to all types that conform to the `Model` protocol.
extension Model where Self: Codable {

    /// De-serialize a JSON string into an instance of the concrete type that conforms
    /// to the `Model` protocol.
    ///
    /// - Parameters:
    ///   - json: a valid JSON object as `String`
    ///   - decoder: an optional JSONDecoder to use to decode the model. Defaults to `JSONDecoder()`, using a
    ///     custom date formatter that decodes ISO8601 dates both with and without fractional seconds
    /// - Returns: an instance of the concrete type conforming to `Model`
    /// - Throws: `DecodingError.dataCorrupted` in case data is not a valid JSON or any
    /// other decoding specific error that `JSONDecoder.decode()` might throw.
    /// - Warning: Although this has `public` access, it is intended for internal & codegen use and should not be used
    ///   directly by host applications. The behavior of this may change without warning. Though it is not used by host
    ///   application making any change to these `public` types should be backward compatible, otherwise it will be a
    ///   breaking change.
    public static func from(json: String,
                            decoder: JSONDecoder? = nil) throws -> Self {
        let resolvedDecoder: JSONDecoder
        if let decoder = decoder {
            resolvedDecoder = decoder
        } else {
            resolvedDecoder = JSONDecoder(dateDecodingStrategy: ModelDateFormatting.decodingStrategy)
        }

        return try resolvedDecoder.decode(Self.self, from: Data(json.utf8))
    }

    /// De-serialize a `Dictionary` into an instance of the concrete type that conforms
    /// to the `Model` protocol.
    ///
    /// - Parameter dictionary: containing keys and values that match the target type
    /// - Returns: an instance of the concrete type conforming to `Model`
    /// - Throws: `DecodingError.dataCorrupted` in case data is not a valid JSON or any
    /// other decoding specific error that `JSONDecoder.decode()` might throw.
    /// - Warning: Although this has `public` access, it is intended for internal & codegen use and should not be used
    ///   directly by host applications. The behavior of this may change without warning. Though it is not used by host
    ///   application making any change to these `public` types should be backward compatible, otherwise it will be a
    ///   breaking change.
    public static func from(dictionary: [String: Any]) throws -> Self {
        let data = try JSONSerialization.data(withJSONObject: dictionary)
        let decoder = JSONDecoder(dateDecodingStrategy: ModelDateFormatting.decodingStrategy)
        return try decoder.decode(Self.self, from: data)
    }

    /// Converts the `Model` instance to a JSON object as `String`.
    /// - Parameters:
    ///   - encoder: an optional JSONEncoder to use to encode the model. Defaults to `JSONEncoder()`, using a
    ///     custom date formatter that encodes ISO8601 dates with fractional seconds
    /// - Returns: the JSON representation of the `Model`
    /// - seealso: https://developer.apple.com/documentation/foundation/jsonencoder/2895034-encode
    /// - Warning: Although this has `public` access, it is intended for internal & codegen use and should not be used
    ///   directly by host applications. The behavior of this may change without warning. Though it is not used by host
    ///   application making any change to these `public` types should be backward compatible, otherwise it will be a
    ///   breaking change.
    public func toJSON(encoder: JSONEncoder? = nil) throws -> String {
        var resolvedEncoder = encoder ?? JSONEncoder(
            dateEncodingStrategy: ModelDateFormatting.encodingStrategy
        )

        if isKnownUniquelyReferenced(&resolvedEncoder) {
            resolvedEncoder.outputFormatting = .sortedKeys
        }

        let data = try resolvedEncoder.encode(self)
        guard let json = String(data: data, encoding: .utf8) else {
            throw DataStoreError.decodingError(
                "Invalid UTF-8 Data object. Could not convert the encoded Model into a valid UTF-8 JSON string",
                "Check if your Model doesn't contain any value with invalid UTF-8 characters."
            )
        }

        return json
    }
}
