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
import amplify_flutter_ios

public class AmplifyStorageOperations {
    internal static func uploadFile(flutterResult: @escaping FlutterResult, request: Dictionary<String, AnyObject>, transferProgressStreamHandler: TransferProgressStreamHandler) {
        do {
            try FlutterUploadFileRequest.validate(request: request)
            let req = FlutterUploadFileRequest(request: request)
            _ = Amplify.Storage.uploadFile(
                key: req.key,
                local: req.file,
                options: req.options,
                progressListener: { progress in
                    transferProgressStreamHandler.onTransferProgressEvent(uuid: req.uuid, progress: progress)
                },
                resultListener: { event in
                    switch event {
                    case .success(let key):
                        var result = [String: String]()
                        result["key"] = key
                        flutterResult(result)
                    case .failure(let storageError):
                        prepareError(flutterResult: flutterResult, error: storageError)
                    }
            })
        } catch {
            prepareError(flutterResult: flutterResult, error: error)
        }
    }
    
    public static func getURL(flutterResult: @escaping FlutterResult, request: Dictionary<String, AnyObject>){
        do {
            try FlutterGetUrlRequest.validate(request: request)
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
                    prepareError(flutterResult: flutterResult, error: storageError)
                }
            })
        } catch {
            prepareError(flutterResult: flutterResult, error: error)
        }
    }
    
    public static func remove(flutterResult: @escaping FlutterResult, request: Dictionary<String, AnyObject>){
        do {
            try FlutterRemoveRequest.validate(request: request)
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
                    prepareError(flutterResult: flutterResult, error: storageError)
                }
            })
        } catch {
            prepareError(flutterResult: flutterResult, error: error)
        }
    }
    
    public static func list(flutterResult: @escaping FlutterResult, request: Dictionary<String, AnyObject>){
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
                    prepareError(flutterResult: flutterResult, error: storageError)
                }
         })
    }
    
    internal static func downloadFile(flutterResult: @escaping FlutterResult, request: Dictionary<String, AnyObject>, transferProgressStreamHandler : TransferProgressStreamHandler){
        do {
            try FlutterDownloadFileRequest.validate(request: request)
            let req = FlutterDownloadFileRequest(request: request)
            _ = Amplify.Storage.downloadFile(key: req.key,
                 local: req.file,
                 options: req.options,
                 progressListener: { progress in
                    transferProgressStreamHandler.onTransferProgressEvent(uuid: req.uuid, progress: progress)
                 },
                 resultListener: { event in
                    switch event {
                    case .success:
                        var result = [String: String]()
                        // Amplify Android sends this back
                        result["path"] = req.file.absoluteURL.path
                        flutterResult(result)
                    case .failure(let storageError):
                        prepareError(flutterResult: flutterResult, error: storageError)
                    }
            })
        } catch {
            prepareError(flutterResult: flutterResult, error: error)
        }
    }
    
    private static func getStorageItemDictionary(item: StorageListResult.Item) -> Dictionary<String ,Any?>{
        var lastModifiedStr: String? = nil
        if let lastModified = item.lastModified {
            lastModifiedStr = Temporal.DateTime(lastModified).iso8601String
        }
        let itemAsDictionary: [String : Any?] = [
            "key": item.key,
            "eTag": item.eTag as Any,
            "lastModified": lastModifiedStr,
            "size": item.size as Any
        ]
        return itemAsDictionary
    }
    
    private static func prepareError(flutterResult: @escaping FlutterResult, error: Error) {
        var details: Dictionary<String, String>
        
        if (error is StorageError) {
            details = createSerializedError(storageError: error as! StorageError);
        } else {
            details = createSerializedError(message: ErrorMessages.missingExceptionMessage,
                                            recoverySuggestion: ErrorMessages.missingRecoverySuggestion,
                                            underlyingError: error)
        }
        logErrorContents(error: error)
        ErrorUtil.postErrorToFlutterChannel(result: flutterResult,
                                            errorCode: "StorageException",
                                            details: details)
    }

   static func createSerializedError(storageError: StorageError)  -> Dictionary<String, String> {
        var serializedException: Dictionary<String, String> = [:]
        serializedException["message"] = storageError.errorDescription
        serializedException["recoverySuggestion"] = storageError.recoverySuggestion
        serializedException["underlyingException"] = storageError.underlyingError?.localizedDescription
        return serializedException
    }

    static func createSerializedError(message: String, recoverySuggestion: String, underlyingError: Error)  -> Dictionary<String, String> {
        var serializedException: Dictionary<String, String> = [:]
        serializedException["message"] = message
        serializedException["recoverySuggestion"] = recoverySuggestion
        serializedException["underlyingException"] = underlyingError.localizedDescription
        return serializedException
    }
    
    static func logErrorContents(error: Error) {
        log.error(error: error)
    }
}

extension AmplifyStorageOperations: DefaultLogger { }
