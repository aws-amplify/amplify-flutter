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

class FlutterApiRequest {
    public static let cancelTokenHeader = "x-amplify-cancel-token"

    // ====== SHARED ======
    static func getMap(args: Any) throws -> [String: Any] {
        guard let res = args as? [String: Any] else {
            throw APIError.invalidConfiguration(
                "The FlutterMethodCall argument was not passed as a dictionary",
                "The request should include the FlutterMethodCall argument as a [String: Any] dictionary")
        }
        return res
    }

    static func getCancelToken(args: Any) throws -> String {
        guard let cancelToken = args as? String else {
            throw APIError.invalidConfiguration(
                "The cancelToken request argument was not passed as a String",
                "The request should include the cancelToken document as a String")
        }
        return cancelToken
    }

    static func getCancelToken(methodChannelRequest: [String: Any]) throws -> String {
        guard let cancelToken = methodChannelRequest["cancelToken"] as? String else {
            throw APIError.invalidConfiguration(
                "The cancelToken request argument was not passed as a String",
                "The request should include the cancelToken document as a String")
        }
        return cancelToken
    }

    static func getApiName(methodChannelRequest: [String: Any]) throws -> String? {
        if let apiNameValue = methodChannelRequest["apiName"] {
            guard let apiName = apiNameValue as? String else {
                  throw APIError.invalidConfiguration(
                    "The apiName request argument was not passed as a String",
                    "The request should include the apiName document as a String")
            }
            return apiName
        }

        return nil
    }

    // ====== GRAPH QL ======
    static func getGraphQLDocument(methodChannelRequest: [String: Any]) throws -> String {
        guard let document = methodChannelRequest["document"] as? String else {
            throw APIError.invalidConfiguration(
                "The graphQL document request argument was not passed as a String",
                "The request should include the graphQL document as a String")
        }
        return document
    }

    static func getVariables(methodChannelRequest: [String: Any]) throws -> [String: Any] {
        guard let variables = methodChannelRequest["variables"] as? [String: Any] else {
            throw APIError.invalidConfiguration(
                "The variables request argument was not passed as a dictionary",
                "The request should include the variables argument as a [String: Any] dictionary")
        }
        return variables
    }

    // ====== REST API =======
    static func getRestRequest(methodChannelRequest: [String: Any], cancelToken: String) throws -> RESTRequest {
        guard let restOptionsMap = methodChannelRequest["restOptions"] as? [String: Any] else {
            throw APIError.invalidConfiguration(
                "The restOptions request argument was not passed as a dictionary",
                "The request should include the restOptions argument as a [String: Any] dictionary")
        }

        var path: String?
        var body: Data?
        var queryParameters: [String: String]?
        var headers: [String: String] = [:]
        var apiName: String?

        for (key, value) in restOptionsMap {
            switch key {
            case "apiName":
                apiName = value as? String
            case "path":
                path = value as? String
            case "body":
                body = (value as? FlutterStandardTypedData)?.data
            case "queryParameters":
                queryParameters = value as? [String: String]
            case "headers":
                headers = value as? [String: String] ?? [:]
            default:
                print("Invalid RestOption key: " + key)
            }
        }

        // Add cancel token for later identification.
        headers[cancelTokenHeader] = cancelToken

        return RESTRequest(apiName: apiName, path: path, headers: headers, queryParameters: queryParameters, body: body)
    }
}
