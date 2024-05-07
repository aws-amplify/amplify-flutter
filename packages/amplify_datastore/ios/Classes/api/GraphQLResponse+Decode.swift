//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//


import Foundation
import Amplify
import AWSPluginsCore

extension GraphQLResponse {
    static var jsonDecoder: JSONDecoder {
        let decoder = JSONDecoder(dateDecodingStrategy: ModelDateFormatting.decodingStrategy)
        return decoder
    }

    static var jsonEncoder: JSONEncoder {
        let encoder = JSONEncoder(dateEncodingStrategy: ModelDateFormatting.encodingStrategy)
        return encoder
    }

    public static func fromAppSyncResponse<R: Decodable>(
        string: String,
        decodePath: String?,
        modelName: String? = nil
    ) -> GraphQLResponse<R> {
        guard let data = string.data(using: .utf8) else {
            return .failure(.transformationError(
                string,
                .operationError("Unable to deserialize json data", "Check the event structure.", nil)
            ))
        }
        return fromAppSyncResponse(data: data, decodePath: decodePath, modelName: modelName)
    }

    public static func fromAppSyncResponse<R: Decodable>(
        data: Data,
        decodePath: String?,
        modelName: String? = nil
    ) -> GraphQLResponse<R> {
        toJson(data: data)
            .flatMap { fromAppSyncResponse(json: $0, decodePath: decodePath, modelName: modelName) }
            .mapError {
                if let response = String(data: data, encoding: .utf8) {
                    return .transformationError(response, $0)
                } else {
                    return .transformationError("Response is not string encodable", $0)
                }
            }
    }

    static func fromAppSyncResponse<R: Decodable>(
        json: JSONValue,
        decodePath: String?,
        modelName: String?
    ) -> Result<R, APIError> {
        if let decodePath {
            if let payload = json.value(at: decodePath) {
                return decodeDataPayload(payload, modelName: modelName)
            } else {
                return .failure(.operationError("Empty data on decode path \(decodePath)", "", nil))
            }
        } else {
            return decodeDataPayload(json, modelName: modelName)
        }
    }

    static func decodeDataPayload<R: Decodable>(
        _ dataPayload: JSONValue,
        modelName: String?
    ) -> Result<R, APIError> {
        if R.Type.self == String.self {
            return decodeDataPayloadToString(dataPayload).map { $0 as! R }
        }

        let dataPayloadWithTypeName = modelName.flatMap {
            dataPayload.asObject?.merging(
                ["__typename": .string($0)]
            ) { a, _ in a }
        }.map { JSONValue.object($0) } ?? dataPayload

        if R.Type.self == AnyModel.self {
            return decodeDataPayloadToAnyModel(dataPayloadWithTypeName).map { $0 as! R }
        }

        return fromJson(dataPayloadWithTypeName)
            .flatMap { data in
                Result<R, Error> { try jsonDecoder.decode(R.self, from: data) }
                    .mapError { APIError.operationError("Could not decode json to type \(R.self)", "", $0)}
            }
    }

    static func decodeDataPayloadToAnyModel(
        _ dataPaylod: JSONValue
    ) -> Result<AnyModel, APIError> {
        guard let typeName = dataPaylod.__typeName?.stringValue else {
            return .failure(.operationError(
                "Could not retrieve __typeName from object",
                """
                Could not retrieve the `__typename` attribute from the return value. Be sure to include __typename in \
                the selection set of the GraphQL operation. GraphQL:
                \(dataPaylod)
                """
            ))
        }

        return decodeDataPayloadToString(dataPaylod).flatMap { underlyingModelString in
            do {
                return .success(.init(try ModelRegistry.decode(
                    modelName: typeName,
                    from: underlyingModelString,
                    jsonDecoder: jsonDecoder
                )))
            } catch {
                return .failure(.operationError(
                    "Could not decode to \(typeName) with \(underlyingModelString)",
                    ""
                ))
            }
        }
    }

    static func decodeDataPayloadToString(
        _ dataPayload: JSONValue
    ) -> Result<String, APIError> {
        do {
            let data = try jsonEncoder.encode(dataPayload)
            guard let string = String(data: data, encoding: .utf8) else {
                return .failure(
                    .operationError("Could not get String from Data", "", nil)
                )
            }
            return .success(string)
        } catch {
            return .failure(.operationError(
                "Could not get the String representation of the GraphQL response",
                ""
            ))
        }
    }

    static func toJson(data: Data) -> Result<JSONValue, APIError> {
        do {
            return .success(try jsonDecoder.decode(JSONValue.self, from: data))
        } catch {
            return .failure(.operationError(
                "Could not decode to JSONValue from GraphQL Response",
                "Service issue",
                error
            ))
        }
    }

    static func fromJson(_ json: JSONValue) -> Result<Data, APIError> {
        do {
            return .success(try jsonEncoder.encode(json))
        } catch {
            return .failure(.operationError(
                "Could not encode JSONValue to Data",
                "",
                error
            ))
        }
    }

}
