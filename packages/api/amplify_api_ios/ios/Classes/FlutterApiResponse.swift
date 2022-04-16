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

import Foundation
import Amplify
import AmplifyPlugins

import amplify_core

extension GraphQLError.Location: Encodable {
    enum CodingKeys: String, CodingKey {
        case line
        case column
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(line, forKey: .line)
        try container.encode(column, forKey: .column)
    }
}

extension GraphQLError: Encodable {
    enum CodingKeys: String, CodingKey {
        case message
        case locations
        case path
        case extensions
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(message, forKey: .message)
        try container.encode(locations, forKey: .locations)
        try container.encode(path, forKey: .path)
        try container.encode(extensions, forKey: .extensions)
    }
}

extension Encodable {
  func asDictionary() -> [String: Any]? {
    guard let data = try? JSONEncoder().encode(self) else {
        return nil
    }
    return try? JSONSerialization.jsonObject(with: data, options: .allowFragments) as? [String: Any]
  }
}

enum FlutterApiResponse {
    static func handleGraphQLErrorResponse(
        flutterResult: @escaping FlutterResult,
        errorResponse: GraphQLResponseError<String>
    ) {
        switch errorResponse {
        case .error(let errorList):
            let result: [String: Any?] = [
                "data": nil,
                "errors": errorList.compactMap { $0.asDictionary() }
            ]
            print("Received a GraphQL response with errors: \(errorList)")
            flutterResult(result)
        case .partial(let data, let errorList):
            let result: [String: Any?] = [
                "data": data,
                "errors": errorList.compactMap { $0.asDictionary() }
            ]
            print("Received a partially successful GraphQL response: \(result)")
            flutterResult(result)
        case .transformationError(_, let error):
            print("Received a partially successful GraphQL response with a transformation error: \(error)")
            FlutterApiErrorHandler.handleApiError(error: error, flutterResult: flutterResult)
        case .unknown(let errorDescription, let recoverySuggestion, _):
            print("An unknown error occured: \(errorDescription)")

            ErrorUtil.postErrorToFlutterChannel(
                result: flutterResult,
                errorCode: "ApiException",
                details: ErrorUtil.createSerializedError(
                    message: errorDescription,
                    recoverySuggestion: recoverySuggestion,
                    underlyingError: nil,
                    httpStatusCode: nil))
        }
    }

    static func handleGraphQLErrorResponseEvent(
        graphQLSubscriptionsStreamHandler: GraphQLSubscriptionsStreamHandler,
        id: String,
        errorResponse: GraphQLResponseError<String>
    ) {
        switch errorResponse {
        case .error(let errorList):
            let payload: [String: Any?] = [
                "data": nil,
                "errors": errorList.compactMap { $0.asDictionary() }
            ]
            print("Received a GraphQL subscription event with errors: \(errorList)")
            graphQLSubscriptionsStreamHandler.sendEvent(
                payload: payload,
                id: id,
                type: GraphQLSubscriptionEventTypes.DATA)
        case .partial(let data, let errorList):
            let payload: [String: Any?] = [
                "data": data,
                "errors": errorList.compactMap { $0.asDictionary() }
            ]
            print("Received a partially successful GraphQL subscription event: \(payload)")
            graphQLSubscriptionsStreamHandler.sendEvent(
                payload: payload,
                id: id,
                type: GraphQLSubscriptionEventTypes.DATA)
        case .transformationError(_, let error):
            print("Received a partially successful GraphQL subscription event with a transformation error: \(error)")
            let details = FlutterApiErrorHandler.createSerializedError(error: error)
            graphQLSubscriptionsStreamHandler.sendError(
                errorCode: "ApiException",
                id: id,
                details: details)
        case .unknown(let errorDescription, let recoverySuggestion, let error):
            print("An unknown error occured: \(errorDescription)")
            let details = FlutterApiErrorHandler.createSerializedError(
                error: APIError.unknown(errorDescription,
                                        recoverySuggestion,
                                        error))
            graphQLSubscriptionsStreamHandler.sendError(
                errorCode: "ApiException",
                id: id,
                details: details)
        }
    }
}
