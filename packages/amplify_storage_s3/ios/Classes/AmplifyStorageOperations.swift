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
    
    public static func remove(flutterResult: @escaping FlutterResult, request: Dictionary<String, AnyObject>){
        if(FlutterRemoveRequest.isValid(request: request)) {
            let req = FlutterRemoveRequest(request: request)
            _ = Amplify.Storage.remove(key: req.key,
                                       options: req.options,
                                       resultListener: { event in
                                        switch event {
                                        case .success(let key):
                                            var result = [String: String]()
                                            result["key"] = key
                                            flutterResult(result)
                                        case .failure(let storageError):
                                            prepareError(flutterResult: flutterResult, msg: FlutterStorageErrorMessage.REMOVE_FAILED.rawValue , localizedError: storageError.errorDescription, recoverySuggestion: storageError.recoverySuggestion)
                                        }
            })
        } else {
            prepareError(flutterResult: flutterResult, msg: FlutterStorageErrorMessage.REMOVE_MALFORMED.rawValue, localizedError: "The request received was malformed", recoverySuggestion: "Please ensure the request matches the method signature")
        }
        
    }
    
    public static func list(flutterResult: @escaping FlutterResult, request: Dictionary<String, AnyObject>){
        if(FlutterListRequest.isValid(request: request)) {
            let req = FlutterListRequest(request: request)
            _ = Amplify.Storage.list(options: req.options,
                                     resultListener: {event in
                                        switch event{
                                        case .success(let result):
                                            var listResultDictionary = [String:Any]();
                                            var storageItemList = [[String:Any]]();
                                            for item in result.items {
                                                let storageItemDictionary = getStorageItemDictionary(item: item)
                                                storageItemList.append(storageItemDictionary)
                                            }
                                            listResultDictionary["items"] = storageItemList
                                            flutterResult(listResultDictionary);
                                        case.failure(let storageError):
                                            prepareError(flutterResult: flutterResult, msg: FlutterStorageErrorMessage.LIST_FAILED.rawValue, localizedError: storageError.errorDescription, recoverySuggestion: storageError.recoverySuggestion)
                                        }})
        } else {
            prepareError(flutterResult: flutterResult, msg: FlutterStorageErrorMessage.LIST_MALFORMED.rawValue, localizedError: "The request received was malformed", recoverySuggestion: "Please ensure the request matches the method signature")
        }
        
    }
    
    public static func downloadFile(flutterResult: @escaping FlutterResult, request: Dictionary<String, AnyObject>){
        if(FlutterDownloadFileRequest.isValid(request: request)) {
            let req = FlutterDownloadFileRequest(request: request)
            _ = Amplify.Storage.downloadFile(key: req.key,
                                             local: req.file,
                                             options: req.options,
                                             resultListener: { event in
                                                switch event {
                                                case .success:
                                                    var result = [String: String]()
                                                    // Amplify Android sends this back
                                                    result["path"] = req.file.absoluteURL.path
                                                    flutterResult(result)
                                                case .failure(let storageError):
                                                    prepareError(flutterResult: flutterResult, msg: FlutterStorageErrorMessage.DOWNLOAD_FILE_FAILED.rawValue, localizedError: storageError.errorDescription, recoverySuggestion: storageError.recoverySuggestion)
                                                }
            })
        } else {
            prepareError(flutterResult: flutterResult, msg: FlutterStorageErrorMessage.DOWNLOAD_FILE_MALFORMED.rawValue, localizedError: "The request received was malformed", recoverySuggestion: "Please ensure the request matches the method signature")
        }
        
    }
    
    private static func getStorageItemDictionary(item: StorageListResult.Item) -> Dictionary<String ,Any>{
        let itemAsDictionary: [String : Any] = [
            "key": item.key,
            "eTag": item.eTag as Any,
            "lastModified": item.lastModified?.description as Any,
            "size": item.size as Any
        ]
        return itemAsDictionary
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
