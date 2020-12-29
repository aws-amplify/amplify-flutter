/*
 * Copyright 2019 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

public struct FlutterRestInputs {
    
    private let flutterInputsMap: [String: Any]
    
    private static let REST_OPTIONS_KEY = "restOptions";
    private static let CODE_KEY = "code";

    private static let API_NAME_KEY = "api_name";
    private static let PATH_KEY = "path";
    private static let BODY_KEY = "body";
    private static let QUERY_PARAM_KEY = "queryParameters";
    private static let HEADERS_KEY = "headers";
    
    init(serializedData: [String: Any]) {
        self.flutterInputsMap = serializedData
    }
    
    public static func validate(map: [String: Any]? ) -> Bool {
        if(map == nil || !(map != nil) || map?[REST_OPTIONS_KEY] == nil || !(map?[REST_OPTIONS_KEY] is [String: Any])){
            return false;
        }
        return (map?[REST_OPTIONS_KEY] as! [String: Any])[PATH_KEY] != nil
    }
    
    public func getCode() -> String {
        return flutterInputsMap[FlutterRestInputs.CODE_KEY] as! String
    }
    
    public func getRestRequest() -> RESTRequest{
        
        let restOptionsMap = flutterInputsMap[FlutterRestInputs.REST_OPTIONS_KEY] as! [String: Any]
        
        var path: String?
        var body: Data?
        var queryParameters: [String: String]?
        var headers: [String: String]?
        var apiName: String?
        
        for(key, value) in restOptionsMap {
            switch key {
                case FlutterRestInputs.API_NAME_KEY :
                    apiName = value as? String
                case FlutterRestInputs.PATH_KEY :
                    path = value as? String
                case FlutterRestInputs.BODY_KEY :
                    body = (value as? FlutterStandardTypedData)?.data
                case FlutterRestInputs.QUERY_PARAM_KEY :
                    queryParameters = value as? [String: String]
                case FlutterRestInputs.HEADERS_KEY :
                    headers = value as? [String: String]
                default:
                    print("Invalid RestOption key: " + key)
            }
        }
        
        return RESTRequest(apiName: apiName, path: path, headers: headers, queryParameters: queryParameters, body: body)
    }
}
