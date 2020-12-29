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

class FlutterGraphQLApiModule {
    
    static func query(flutterResult: @escaping FlutterResult, request: [String: Any], bridge: ApiBridge) {
        do  {
            let document = try FlutterApiRequestUtils.getGraphQLDocument(methodChannelRequest: request)
            let variables = try FlutterApiRequestUtils.getVariables(methodChannelRequest: request)
            
            let request = GraphQLRequest<String>(document: document,
                                                 variables: variables,
                                                 responseType: String.self)
            
            _ = bridge.query(request: request) { result in
                switch result {
                case .success(let response):
                    switch response {
                    case .success(let data):
                        let result: [String: Any] = [
                            "data": data,
                            "errors": []
                        ]
                        print("GraphQL query operation succeeded with response : \(result)")
                        flutterResult(result)
                    case .failure(let errorResponse):
                        FlutterApiResponseUtils.handleGraphQLErrorResponse(flutterResult: flutterResult, errorResponse: errorResponse, failureMessage: FlutterApiErrorMessage.QUERY_FAILED.rawValue)
                    }
                case .failure(let apiError):
                    print("GraphQL query operation failed: \(apiError)")
                    FlutterApiErrorUtils.handleAPIError(flutterResult: flutterResult, error: apiError, msg: FlutterApiErrorMessage.QUERY_FAILED.rawValue)
                }}
            
        } catch let error as APIError {
            print("Failed to parse query arguments with \(error)")
            FlutterApiErrorUtils.handleAPIError(flutterResult: flutterResult, error: error, msg: FlutterApiErrorMessage.MALFORMED.rawValue)
        }
        catch {
            print("An unexpected error occured when parsing query arguments: \(error)")
            let errorMap = FlutterApiErrorUtils.createErrorMap(localizedError: "\(error.localizedDescription).\nAn unrecognized error has occurred", recoverySuggestion: "See logs for details")
            FlutterApiErrorUtils.createFlutterError(flutterResult: flutterResult, msg: FlutterApiErrorMessage.MALFORMED.rawValue, errorMap: errorMap)
        }
    }
    
    static func mutate(flutterResult: @escaping FlutterResult, request: [String: Any], bridge: ApiBridge) {
        do  {
            let document = try FlutterApiRequestUtils.getGraphQLDocument(methodChannelRequest: request)
            let variables = try FlutterApiRequestUtils.getVariables(methodChannelRequest: request)
            
            let request = GraphQLRequest<String>(document: document,
                                                 variables: variables,
                                                 responseType: String.self)
            
            _ = bridge.mutate(request: request) { result in
                switch result {
                case .success(let response):
                    switch response {
                    case .success(let data):
                        let result: [String: Any] = [
                            "data": data,
                            "errors": []
                        ]
                        print("GraphQL mutate operation succeeded with response : \(result)")
                        flutterResult(result)
                    case .failure(let errorResponse):
                        FlutterApiResponseUtils.handleGraphQLErrorResponse(flutterResult: flutterResult, errorResponse: errorResponse, failureMessage: FlutterApiErrorMessage.MUTATE_FAILED.rawValue)
                    }
                case .failure(let apiError):
                    print("GraphQL mutate operation failed: \(apiError)")
                    FlutterApiErrorUtils.handleAPIError(flutterResult: flutterResult, error: apiError, msg: FlutterApiErrorMessage.MUTATE_FAILED.rawValue)
                }
            }
        } catch let error as APIError {
            print("Failed to parse mutate arguments with \(error)")
            FlutterApiErrorUtils.handleAPIError(flutterResult: flutterResult, error: error, msg: FlutterApiErrorMessage.MALFORMED.rawValue)
        }
        catch {
            print("An unexpected error occured when parsing mutate arguments: \(error)")
            let errorMap = FlutterApiErrorUtils.createErrorMap(localizedError: "\(error.localizedDescription).\nAn unrecognized error has occurred", recoverySuggestion: "See logs for details")
            FlutterApiErrorUtils.createFlutterError(flutterResult: flutterResult, msg: FlutterApiErrorMessage.MALFORMED.rawValue, errorMap: errorMap)
        }
    }
}
