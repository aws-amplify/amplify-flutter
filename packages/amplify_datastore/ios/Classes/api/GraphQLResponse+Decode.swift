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
                .unknown("Unable to deserialize json data", "Check the event structure.")
            ))
        }

        let result: Result<GraphQLResponse<R>, APIError> = toJson(data: data).flatMap {
            fromAppSyncResponse(json: $0, decodePath: decodePath, modelName: modelName)
        }

        switch result {
        case .success(let response): return response
        case .failure(let error): return .failure(.transformationError(string, error))
        }
    }

    public static func fromAppSyncSubscriptionResponse<R: Decodable>(
        string: String,
        decodePath: String?,
        modelName: String? = nil
    ) -> GraphQLResponse<R> {
        guard let data = string.data(using: .utf8) else {
            return .failure(.transformationError(
                string,
                .unknown("Unable to deserialize json data", "Check the event structure.")
            ))
        }

        return toJson(data: data)
            .flatMap {
                if let decodePath, let data = $0.value(at: decodePath) {
                    return .success(data)
                } else {
                    return .failure(APIError.unknown("Failed to get data from AppSync response", ""))
                }
            }
            .flatMap { decodeDataPayload($0, modelName: modelName) }
            .mapError { .transformationError(string, $0) }
    }

    public static func fromAppSyncSubscriptionErrorResponse<R: Decodable>(
        string: String
    ) -> GraphQLResponse<R> {
        guard let data = string.data(using: .utf8) else {
            return .failure(.transformationError(
                string,
                .unknown("Unable to deserialize json data", "Check the event structure.")
            ))
        }

        let result = toJson(data: data)
            .flatMap {
                let errors = $0.errors
                if errors != nil {
                    return .success(errors?.asArray ?? [errors!])
                } else {
                    return .failure(.unknown("Failed to get errors from AppSync response", ""))
                }
            }
            .map { $0.compactMap(parseGraphQLError(error:)) }

        switch result {
        case .success(let errors): return .failure(.error(errors))
        case .failure(let apiError): return .failure(.transformationError(string, apiError))
        }
    }

// MARK: - internal methods
    // following logic in
    // https://github.com/aws-amplify/amplify-swift/blob/main/AmplifyPlugins/API/Sources/AWSAPIPlugin/Support/Internal/AWSAppSyncGraphQLResponse.swift#L18-L38
    static func fromAppSyncResponse<R: Decodable>(
        json: JSONValue,
        decodePath: String?,
        modelName: String?
    ) -> Result<GraphQLResponse<R>, APIError> {
        let data = decodePath != nil ? json.value(at: decodePath!) : json
        let errors = json.errors?.asArray
        switch (data, errors) {
        case (.some(let data), .none):
            return decodeDataPayload(data, modelName: modelName).map { .success($0) }
        case (.none, .some(let errors)):
            return .success(.failure(.error(errors.compactMap(parseGraphQLError(error:)))))
        case (.some(let data), .some(let errors)):
            return decodeDataPayload(data, modelName: modelName).map {
                .failure(.partial($0, errors.compactMap(parseGraphQLError(error:))))
            }
        case (.none, .none):
            return .failure(.unknown(
                "Failed to get data object or errors from GraphQL response",
                "The AppSync service returned a malformed GraphQL response"
            ))
        }
    }

    // folowing logic in
    // https://github.com/aws-amplify/amplify-swift/blob/main/AmplifyPlugins/API/Sources/AWSAPIPlugin/Support/Decode/GraphQLErrorDecoder.swift
    static func parseGraphQLError(
        error: JSONValue
    ) -> GraphQLError? {
        guard let errorObject = error.asObject else {
            return nil
        }

        let extensions = errorObject.enumerated().filter { !["message", "locations", "path", "extensions"].contains($0.element.key) }
            .reduce([String: JSONValue]()) { partialResult, item in
                partialResult.merging([item.element.key: item.element.value]) { $1 }
            }

        return (try? jsonEncoder.encode(error))
            .flatMap { try? jsonDecoder.decode(GraphQLError.self, from: $0) }
            .map {
                GraphQLError(
                    message: $0.message,
                    locations: $0.locations,
                    path: $0.path,
                    extensions: extensions.isEmpty ? nil : extensions
                )
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
