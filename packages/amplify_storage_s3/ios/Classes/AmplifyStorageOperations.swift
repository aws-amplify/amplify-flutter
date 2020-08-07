//
//  AmplifyStorageOperations.swift
//  Amplify
//
//  Created by nanda, ashish on 8/4/20.
//

import Flutter
import UIKit
import Amplify
import AmplifyPlugins
import AWSMobileClient

//TODO: Add more catch blocks,
// replace strings with enums for the different error cases/codes

public class AmplifyStorageOperations {
    public static func uploadFile(flutterResult: @escaping FlutterResult, request: Dictionary<String, AnyObject>) {
        print("In uploadFile operation")
        if(FlutterUploadFileRequest.isValid(request: request)) {
            let req = FlutterUploadFileRequest(request: request)
            print("UploadFileRequest.Options object is: \(String(describing: req.options))")
            _ = Amplify.Storage.uploadFile(
                key: req.key,
                local: req.file,
                options: req.options,
                progressListener: {
                    progress in print("Progress: \(progress)")},
                resultListener: { event in
                    switch event {
                        case .success(let key):
                            print("Successfully uploaded the file with key: \(key)")
                            //TODO: Implement a response type
                            var result = [String: String]()
                            result["key"] = key
                            flutterResult(result)
                        case .failure(let storageError):
                            prepareError(flutterResult: flutterResult, msg: "UPLOAD_FILE_OPERATION_FAILED", localizedError: storageError.errorDescription, recoverySuggestion: storageError.recoverySuggestion)
                }
            })
        } else {
            prepareError(flutterResult: flutterResult, msg: "UPLOAD_FILE_REQUEST_MALFORMED", localizedError: "The request received was malformed", recoverySuggestion: "Please ensure the request matches the method signature")
        }
    }
    
    public static func getURL(flutterResult: @escaping FlutterResult, request: Dictionary<String, AnyObject>){
        print("In getUrl operation")
        if(FlutterGetUrlRequest.isValid(request: request)) {
            let req = FlutterGetUrlRequest(request: request)
            print("GetUrlRequest.Options object is: \(String(describing: req.options))")
            _ = Amplify.Storage.getURL(key: req.key,
                               options: nil,
                               resultListener: { event in
                                switch event {
                                case .success(let url):
                                    print("Successfully got URL: \(url.absoluteString)")
                                    var result = [String: String]()
                                    //TODO: Implement a response type
                                    result["url"] = url.absoluteString
                                    flutterResult(result)
                                case .failure(let storageError):
                                    prepareError(flutterResult: flutterResult, msg: "GET_URL_OPERATION_FAILED", localizedError: storageError.errorDescription, recoverySuggestion: storageError.recoverySuggestion)
                                }
        })
        } else {
            prepareError(flutterResult: flutterResult, msg: "GET_URL_REQUEST_MALFORMED", localizedError: "The request received was malformed", recoverySuggestion: "Please ensure the request matches the method signature")
        }
        
    }

}

//TODO: Move to an Error or Util class.
func prepareError(flutterResult: @escaping FlutterResult, msg: String, localizedError: String?, recoverySuggestion: String?) {
    var errorDetails: [String: Any] = [:]
    var platformErrorDetails: [String: String] = [:]

    platformErrorDetails["platform"] = "iOS"
    platformErrorDetails["localalizedError"] = localizedError
    platformErrorDetails["recoverySuggestion"] = recoverySuggestion

    errorDetails["PLATFORM_EXCEPTIONS"] = platformErrorDetails

    flutterResult(FlutterError(code: "AmplifyException", message: msg, details: errorDetails))
}
