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

public class AmplifyStorageOperations {
    public static func uploadFile(flutterResult: @escaping FlutterResult, request: Dictionary<String, AnyObject>) {
        print("In UploadFile Operation")
        if(FlutterUploadFileRequest.isValid(request: request)) {
            let req = FlutterUploadFileRequest(request: request)
            print("Options object is \(String(describing: req.options))")
            _ = Amplify.Storage.uploadFile(
                key: req.key,
                local: req.file,
                progressListener: {
                    progress in print("Progress: \(progress)")},
                resultListener: { event in
                    switch event {
                        case .success(let data):
                            print("Success. DATA: \(data)")
                            var result = [String: String]()
                            result["key"] = data
                            flutterResult(result)
                        case .failure(let storageError):
                            let platformErrorDetails = preparePlatformErrorDetails(localizedError: storageError.errorDescription, recoverySuggestion: storageError.recoverySuggestion)
                            
                            prepareError(flutterResult: flutterResult, msg: "UPLOAD_FILE_FAILED", platformErrorDetails: platformErrorDetails)
                }
            })
        } else {
            print("UploadFile request was malformed")
        }
    }
    
//    public static func getURL(){
//        Amplify.Storage.getURL(key: <#T##String#>, options: <#T##StorageGetURLRequest.Options?#>, resultListener: <#T##((Result<URL, StorageError>) -> Void)?##((Result<URL, StorageError>) -> Void)?##(Result<URL, StorageError>) -> Void#>)
//    }
//    var options = StorageGetURLRequest.Options(accessLevel: <#T##StorageAccessLevel#>, targetIdentityId: <#T##String?#>, expires: <#T##Int#>, pluginOptions: <#T##Any?#>)
//    var options2 = StorageDownloadFileRequest.Options(accessLevel: <#T##StorageAccessLevel#>, targetIdentityId: <#T##String?#>, pluginOptions: <#T##Any?#>)
//    var options3 = StorageListRequest.Options(accessLevel: <#T##StorageAccessLevel#>, targetIdentityId: <#T##String?#>, path: <#T##String?#>, pluginOptions: <#T##Any?#>)
//    var options4 = StorageRemoveRequest.Options(accessLevel: <#T##StorageAccessLevel#>, pluginOptions: <#T##Any?#>)
}



func prepareError(flutterResult: @escaping FlutterResult, msg: String, platformErrorDetails: [String: String]) {
    var errorDetails: [String: Any] = [:]
    errorDetails["PLATFORM_EXCEPTIONS"] = platformErrorDetails
    
    flutterResult(FlutterError(code: "AmplifyException", message: msg, details: errorDetails))
}

func preparePlatformErrorDetails(localizedError: String?, recoverySuggestion: String?) -> [String: String] {
    var platformDetails: [String: String] = [:]
    platformDetails["platform"] = "iOS"
    platformDetails["localalizedError"] = localizedError
    platformDetails["recoverySuggestion"] = recoverySuggestion
    return platformDetails
}

