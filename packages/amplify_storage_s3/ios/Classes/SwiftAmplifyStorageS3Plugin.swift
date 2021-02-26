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
import amplify_core

public class SwiftAmplifyStorageS3Plugin: NSObject, FlutterPlugin {
    public static func register(with registrar: FlutterPluginRegistrar) {
        let channel = FlutterMethodChannel(name: "com.amazonaws.amplify/storage_s3", binaryMessenger: registrar.messenger())
        let instance = SwiftAmplifyStorageS3Plugin()
        registrar.addMethodCallDelegate(instance, channel: channel)
    }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    print("In handle for method \(call.method)")

    if(call.method == "addPlugin"){
        do {
            try Amplify.add(plugin: AWSS3StoragePlugin() )
            result(true)
        } catch let error{
            if(error is StorageError){
                let storageError = error as! StorageError

                ErrorUtil.postErrorToFlutterChannel(
                    result: result,
                    errorCode: "StorageException",
                    details: [
                        "message" : storageError.errorDescription,
                        "recoverySuggestion" : storageError.recoverySuggestion,
                        "underlyingError": storageError.underlyingError != nil ? storageError.underlyingError!.localizedDescription : ""
                    ])
            }
            else{
                print("Failed to add Amplify Storage Plugin \(error)")
                result(false)
            }
        }
        return
    }

    let arguments = call.arguments as! Dictionary<String,AnyObject>
    switch call.method {
        case "uploadFile":
            AmplifyStorageOperations.uploadFile(flutterResult: result, request: arguments)
        case "getUrl":
            AmplifyStorageOperations.getURL(flutterResult: result, request: arguments)
        case "remove":
            AmplifyStorageOperations.remove(flutterResult: result, request: arguments)
        case "list":
            AmplifyStorageOperations.list(flutterResult: result, request: arguments)
        case "downloadFile":
            AmplifyStorageOperations.downloadFile(flutterResult: result, request: arguments)
        default:
            result(FlutterMethodNotImplemented)
    }
  }
}
