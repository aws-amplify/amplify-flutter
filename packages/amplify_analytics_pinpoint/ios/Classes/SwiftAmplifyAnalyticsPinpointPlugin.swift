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

public class SwiftAmplifyAnalyticsPinpointPlugin: NSObject, FlutterPlugin {

    public static func register(with registrar: FlutterPluginRegistrar) {
        let channel = FlutterMethodChannel(name: "com.amazonaws.amplify/analytics_pinpoint", binaryMessenger: registrar.messenger())
        let instance = SwiftAmplifyAnalyticsPinpointPlugin()
        registrar.addMethodCallDelegate(instance, channel: channel)

        do {
            try Amplify.add(plugin: AWSPinpointAnalyticsPlugin() )
        } catch {
            print("Failed to add Amplify AWS Plugin \(error)")
        }
    }

    public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {

        switch call.method{
            case "recordEvent":
                AmplifyAnalyticsBridge.recordEvent(arguments: call.arguments, result: result)
            case "flushEvents":
                AmplifyAnalyticsBridge.flushEvents(result: result)
            case "registerGlobalProperties":
                AmplifyAnalyticsBridge.registerGlobalProperties(arguments: call.arguments, result: result)
            case "unregisterGlobalProperties":
                AmplifyAnalyticsBridge.unregisterGlobalProperties(arguments: call.arguments, result: result)
            case "enable":
                AmplifyAnalyticsBridge.enable(result: result)
            case "disable":
                AmplifyAnalyticsBridge.disable(result: result)
            case "identifyUser":
                AmplifyAnalyticsBridge.identifyUser(arguments: call.arguments, result: result)
            default :
                print("unknown event")
        }
    }

  
}
