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

class FlutterGraphQLApi {
    static func query(flutterResult: @escaping FlutterResult, request: [String: Any], bridge: ApiBridge) {
        do {
            let document = try FlutterApiRequest.getGraphQLDocument(methodChannelRequest: request)
            let variables = try FlutterApiRequest.getVariables(methodChannelRequest: request)
            let cancelToken = try FlutterApiRequest.getCancelToken(methodChannelRequest: request)
            let apiName = try FlutterApiRequest.getApiName(methodChannelRequest: request)

            let request = GraphQLRequest<String>(apiName: apiName,
                                                document: document,
                                                 variables: variables,
                                                 responseType: String.self)

            let operation = bridge.query(request: request) { result in
                switch result {
                case .success(let response):
                    switch response {
                    case .success(let data):

                        if !cancelToken.isEmpty {
                            OperationsManager.removeOperation(cancelToken: cancelToken)
                        }

                        let result: [String: Any] = [
                            "data": data,
                            "errors": []
                        ]
                        print("GraphQL query operation succeeded with response : \(result)")
                        flutterResult(result)
                    case .failure(let errorResponse):

                        if !cancelToken.isEmpty {
                            OperationsManager.removeOperation(cancelToken: cancelToken)
                        }

                        FlutterApiResponse.handleGraphQLErrorResponse(
                            flutterResult: flutterResult,
                            errorResponse: errorResponse)
                    }
                case .failure(let apiError):

                    if !cancelToken.isEmpty {
                        OperationsManager.removeOperation(cancelToken: cancelToken)
                    }

                    print("GraphQL query operation failed: \(apiError)")
                    FlutterApiErrorHandler.handleApiError(error: apiError, flutterResult: flutterResult)
                }
            }
            OperationsManager.addOperation(cancelToken: cancelToken, operation: operation)

        } catch let error as APIError {
            print("Failed to parse query arguments with \(error)")
            FlutterApiErrorHandler.handleApiError(error: error, flutterResult: flutterResult)
        } catch {
            print("An unexpected error occured when parsing query arguments: \(error)")
            FlutterApiErrorHandler.handleApiError(error: APIError(error: error), flutterResult: flutterResult)
        }
    }

    static func mutate(flutterResult: @escaping FlutterResult, request: [String: Any], bridge: ApiBridge) {
        do {
            let document = try FlutterApiRequest.getGraphQLDocument(methodChannelRequest: request)
            let variables = try FlutterApiRequest.getVariables(methodChannelRequest: request)
            let cancelToken = try FlutterApiRequest.getCancelToken(methodChannelRequest: request)
            let apiName = try FlutterApiRequest.getApiName(methodChannelRequest: request)

            let request = GraphQLRequest<String>(apiName: apiName,
                                                document: document,
                                                 variables: variables,
                                                 responseType: String.self)

            let operation = bridge.mutate(request: request) { result in
                switch result {
                case .success(let response):
                    switch response {
                    case .success(let data):

                        if !cancelToken.isEmpty {
                            OperationsManager.removeOperation(cancelToken: cancelToken)
                        }

                        let result: [String: Any] = [
                            "data": data,
                            "errors": []
                        ]
                        print("GraphQL mutate operation succeeded with response : \(result)")
                        flutterResult(result)
                    case .failure(let errorResponse):

                        if !cancelToken.isEmpty {
                            OperationsManager.removeOperation(cancelToken: cancelToken)
                        }

                        FlutterApiResponse.handleGraphQLErrorResponse(
                            flutterResult: flutterResult,
                            errorResponse: errorResponse)
                    }
                case .failure(let apiError):

                    if !cancelToken.isEmpty {
                        OperationsManager.removeOperation(cancelToken: cancelToken)
                    }

                    print("GraphQL mutate operation failed: \(apiError)")
                    FlutterApiErrorHandler.handleApiError(error: apiError, flutterResult: flutterResult)
                }
            }
            OperationsManager.addOperation(cancelToken: cancelToken, operation: operation)

        } catch let error as APIError {
            print("Failed to parse mutate arguments with \(error)")
            FlutterApiErrorHandler.handleApiError(error: error, flutterResult: flutterResult)
        } catch {
            print("An unexpected error occured when parsing mutate arguments: \(error)")
            FlutterApiErrorHandler.handleApiError(error: APIError(error: error), flutterResult: flutterResult)
        }
    }

    static func subscribe(
        flutterResult: @escaping FlutterResult,
        request: [String: Any],
        bridge: ApiBridge,
        graphQLSubscriptionsStreamHandler: GraphQLSubscriptionsStreamHandler
    ) {
        do {
            let document = try FlutterApiRequest.getGraphQLDocument(methodChannelRequest: request)
            let variables = try FlutterApiRequest.getVariables(methodChannelRequest: request)
            let id = try FlutterApiRequest.getCancelToken(methodChannelRequest: request)
            let apiName = try FlutterApiRequest.getApiName(methodChannelRequest: request)

            let request = GraphQLRequest<String>(apiName: apiName,
                                                 document: document,
                                                 variables: variables,
                                                 responseType: String.self)

            let operation = createOperation(bridge: bridge,
                                            flutterResult: flutterResult,
                                            graphQLSubscriptionsStreamHandler: graphQLSubscriptionsStreamHandler,
                                            id: id,
                                            request: request)
            OperationsManager.addOperation(cancelToken: id, operation: operation)
        } catch let error as APIError {
            print("Failed to parse subscribe arguments with \(error)")
            FlutterApiErrorHandler.handleApiError(error: error, flutterResult: flutterResult)
        } catch {
            print("An unexpected error occured when parsing mutate arguments: \(error)")
            FlutterApiErrorHandler.handleApiError(error: APIError(error: error), flutterResult: flutterResult)
        }
    }

    private static func createOperation(
        bridge: ApiBridge,
        flutterResult: @escaping FlutterResult,
        graphQLSubscriptionsStreamHandler: GraphQLSubscriptionsStreamHandler,
        id: String,
        request: GraphQLRequest<String>
    ) -> GraphQLSubscriptionOperation<String> {
        var established = false
        return bridge.subscribe(request: request) { subscriptionEvent in
                switch subscriptionEvent {
                case .connection(let subscriptionConnectionState):
                    if subscriptionConnectionState == SubscriptionConnectionState.connected {
                        established = true
                        print("Subscription established: \(id)")
                        flutterResult(nil)
                    }
                case .data(let result):
                    switch result {
                    case .success(let data):
                        print("GraphQL subscription event received without errors: \(data)")
                        let payload: [String: Any] = [
                            "data": data,
                            "errors": []
                        ]
                        graphQLSubscriptionsStreamHandler.sendEvent(
                            payload: payload,
                            id: id,
                            type: GraphQLSubscriptionEventTypes.DATA)
                    case .failure(let errorResponse):
                        FlutterApiResponse.handleGraphQLErrorResponseEvent(
                            graphQLSubscriptionsStreamHandler: graphQLSubscriptionsStreamHandler,
                            id: id,
                            errorResponse: errorResponse)
                    }
                }
            } completionListener: { result in
                switch result {
                case .success:
                    if !id.isEmpty {
                        OperationsManager.removeOperation(cancelToken: id)
                    }
                    print("Subscription has been closed successfully")
                    graphQLSubscriptionsStreamHandler.sendEvent(
                        payload: nil,
                        id: id,
                        type: GraphQLSubscriptionEventTypes.DONE)
                case .failure(let apiError):
                    print("Subscription has terminated with \(apiError)")
                    if !id.isEmpty {
                        OperationsManager.removeOperation(cancelToken: id)
                    }
                    if established {
                        let details = FlutterApiErrorHandler.createSerializedError(error: apiError)
                        graphQLSubscriptionsStreamHandler.sendError(
                            errorCode: "ApiException",
                            id: id,
                            details: details)
                    } else {
                        FlutterApiErrorHandler.handleApiError(error: apiError, flutterResult: flutterResult)
                    }
                }
            }
    }
}
