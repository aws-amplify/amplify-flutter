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

import Foundation
import Amplify
import AmplifyPlugins

import amplify_core

class FlutterApiResponse {
    static func handleGraphQLErrorResponse(flutterResult: @escaping FlutterResult, errorResponse: GraphQLResponseError<String>) {
        switch(errorResponse) {
        case .error(let errorList):
            let result: [String: Any?] = [
                "data": nil,
                "errors": errorList.map { $0.message }
            ]
            print("Received a GraphQL response with errors: \(errorList)")
            flutterResult(result)
        case .partial(let data, let errorList):
            let result: [String: Any?] = [
                "data": data,
                "errors": errorList.map { $0.message }
            ]
            print("Received a partially successful GraphQL response: \(result)")
            flutterResult(result)
        case .transformationError(let rawResponse, let error):
            print("Received a partially successful GraphQL response with a transformation error: \(error)")
            FlutterApiErrorHandler.handleApiError(error: error, flutterResult: flutterResult)
        case .unknown(let errorDescription, let recoverySuggestion, _):
            print("An unknown error occured: \(errorDescription)")
            
            ErrorUtil.postErrorToFlutterChannel(result: flutterResult, errorCode: "ApiException",
                                                details: ErrorUtil.createSerializedError(message: errorDescription, recoverySuggestion: recoverySuggestion, underlyingError: nil))
        }
    }
    
    static func handleGraphQLErrorResponseEvent(graphQLSubscriptionsStreamHandler: GraphQLSubscriptionsStreamHandler,
                                                id: String, errorResponse: GraphQLResponseError<String>) {
        switch(errorResponse) {
        case .error(let errorList):
            let payload: [String: Any?] = [
                "data": nil,
                "errors": errorList.map { $0.message }
            ]
            print("Received a GraphQL subscription event with errors: \(errorList)")
            graphQLSubscriptionsStreamHandler.sendEvent(payload: payload, id: id, type: GraphQLSubscriptionEventTypes.DATA)
        case .partial(let data, let errorList):
            let payload: [String: Any?] = [
                "data": data,
                "errors": errorList.map { $0.message }
            ]
            print("Received a partially successful GraphQL subscription event: \(payload)")
            graphQLSubscriptionsStreamHandler.sendEvent(payload: payload, id: id, type: GraphQLSubscriptionEventTypes.DATA)
        case .transformationError(let rawResponse, let error):
            print("Received a partially successful GraphQL subscription event with a transformation error: \(error)")
            let details = FlutterApiErrorHandler.createSerializedError(error: error)
            graphQLSubscriptionsStreamHandler.sendError(errorCode: "ApiException", details: details)
        case .unknown(let errorDescription, let recoverySuggestion, let error):
            print("An unknown error occured: \(errorDescription)")
            let details = FlutterApiErrorHandler.createSerializedError(error: APIError.unknown(errorDescription, recoverySuggestion, error))
            graphQLSubscriptionsStreamHandler.sendError(errorCode: "ApiException", details: details)
        }
    }
}

