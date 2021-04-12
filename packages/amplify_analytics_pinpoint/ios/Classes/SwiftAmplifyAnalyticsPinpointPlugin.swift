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

import Flutter
import UIKit
import Amplify
import AmplifyPlugins

public class SwiftAmplifyAnalyticsPinpointPlugin: NSObject, FlutterPlugin {
    
    private let bridge: AnalyticsBridge
    
    init(
        bridge: AnalyticsBridge = AnalyticsBridge()
    ){
        self.bridge = bridge
    }

    public static func register(with registrar: FlutterPluginRegistrar) {
        let channel = FlutterMethodChannel(name: "com.amazonaws.amplify/analytics_pinpoint", binaryMessenger: registrar.messenger())
        let instance = SwiftAmplifyAnalyticsPinpointPlugin()
        registrar.addMethodCallDelegate(instance, channel: channel)
    }

    public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        innerHandle(method: call.method, callArgs: call.arguments as Any?, result: result)
    }
    
    public func innerHandle(method: String, callArgs: Any?, result: @escaping FlutterResult){
        switch method{
            case "addPlugin":
                FlutterAnalytics.addPlugin(result: result)
            case "recordEvent":
                FlutterAnalytics.record(arguments: callArgs, result: result, bridge: bridge)
            case "flushEvents":
                FlutterAnalytics.flushEvents(result: result, bridge: bridge)
            case "registerGlobalProperties":
                FlutterAnalytics.registerGlobalProperties(arguments: callArgs, result: result, bridge: bridge)
            case "unregisterGlobalProperties":
                FlutterAnalytics.unregisterGlobalProperties(arguments: callArgs, result: result, bridge: bridge)
            case "enable":
                FlutterAnalytics.enable(result: result, bridge: bridge)
            case "disable":
                FlutterAnalytics.disable(result: result, bridge: bridge)
            case "identifyUser":
                FlutterAnalytics.identifyUser(arguments: callArgs, result: result, bridge: bridge)
            default :
                print("unknown event")
        }
    }

  
}
