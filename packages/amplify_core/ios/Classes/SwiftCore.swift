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
import AWSPluginsCore

public class SwiftCore: NSObject, FlutterPlugin {
    
  var isConfigured: Bool = false
    
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "com.amazonaws.amplify/core", binaryMessenger: registrar.messenger())
    let instance = SwiftCore()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }


  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
      case "configure":
        do {
          let arguments = call.arguments as! Dictionary<String, AnyObject>
          let version = arguments["version"] as! String
          let configuration = arguments["configuration"] as! String
          let amplifyConfiguration = try JSONDecoder().decode(AmplifyConfiguration.self, from: configuration.data(using: .utf8)!)
          onConfigure(result: result, version: version, amplifyConfiguration: amplifyConfiguration)
            
        } catch {
            print("Failed to configure Amplify \(error)")
            result(FlutterError(code: "AmplifyException",
                                message: "Failed to Configure Amplify",
                                details: error.localizedDescription));
        }
      default:
        result(FlutterMethodNotImplemented)
    }
  }

    private func onConfigure(result: FlutterResult, version: String, amplifyConfiguration: AmplifyConfiguration) {
      if (!isConfigured) {
        do {
          AmplifyAWSServiceConfiguration.addUserAgentPlatform(.flutter, version: version)
          try Amplify.configure(amplifyConfiguration)
          isConfigured = true
          result(true)
        } catch {
          result(FlutterError(code: "AmplifyException",
                              message: "Failed to Configure Amplify",
                              details: error.localizedDescription));
        }
      } else {
        result(true)
      }
  }
}
