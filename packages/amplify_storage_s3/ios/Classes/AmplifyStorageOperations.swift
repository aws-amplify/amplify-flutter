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

import Flutter
import UIKit
import Amplify
import AmplifyPlugins
import AWSMobileClient

public class AmplifyStorageOperations {
    public static func uploadFile(flutterResult: @escaping FlutterResult, request: Dictionary<String, AnyObject>) {
        if(FlutterUploadFileRequest.isValid(request: request)) {
            let req = FlutterUploadFileRequest(request: request)
            _ = Amplify.Storage.uploadFile(
                key: req.key,
                local: req.file,
                options: req.options,
                resultListener: { event in
                    switch event {
                    case .success(let key):
                        var result = [String: String]()
                        result["key"] = key
                        flutterResult(result)
                    case .failure(let storageError):
                        prepareError(flutterResult: flutterResult, msg: FlutterStorageErrorMessage.UPLOAD_FILE_FAILED.rawValue, localizedError: storageError.errorDescription, recoverySuggestion: storageError.recoverySuggestion)
                    }
            })
        } else {
            prepareError(flutterResult: flutterResult, msg: FlutterStorageErrorMessage.UPLOAD_FILE_MALFORMED.rawValue, localizedError: "The request received was malformed", recoverySuggestion: "Please ensure the request matches the method signature")
        }
    }
    
    public static func getURL(flutterResult: @escaping FlutterResult, request: Dictionary<String, AnyObject>){
        if(FlutterGetUrlRequest.isValid(request: request)) {
            let req = FlutterGetUrlRequest(request: request)
            _ = Amplify.Storage.getURL(key: req.key,
                                       options: req.options,
                                       resultListener: { event in
                                        switch event {
                                        case .success(let url):
                                            var result = [String: String]()
                                            result["url"] = url.absoluteString
                                            flutterResult(result)
                                        case .failure(let storageError):
                                            prepareError(flutterResult: flutterResult, msg: FlutterStorageErrorMessage.GET_URL_FAILED.rawValue, localizedError: storageError.errorDescription, recoverySuggestion: storageError.recoverySuggestion)
                                        }
            })
        } else {
            prepareError(flutterResult: flutterResult, msg: FlutterStorageErrorMessage.GET_URL_MALFORMED.rawValue, localizedError: "The request received was malformed", recoverySuggestion: "Please ensure the request matches the method signature")
        }
        
    }
    
    private static func prepareError(flutterResult: @escaping FlutterResult, msg: String, localizedError: String?, recoverySuggestion: String?) {
        var errorDetails: [String: Any] = [:]
        var platformErrorDetails: [String: String] = [:]
        
        platformErrorDetails["platform"] = "iOS"
        platformErrorDetails["localalizedError"] = localizedError
        platformErrorDetails["recoverySuggestion"] = recoverySuggestion
        
        errorDetails["PLATFORM_EXCEPTIONS"] = platformErrorDetails
        
        flutterResult(FlutterError(code: "AmplifyException", message: msg, details: errorDetails))
    }
    
}



