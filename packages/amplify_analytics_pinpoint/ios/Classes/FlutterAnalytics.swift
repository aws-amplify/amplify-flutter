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

import Foundation

import Flutter
import UIKit
import Amplify
import AmplifyPlugins
import AWSCore
import amplify_core

public class FlutterAnalytics {

    public static func addPlugin(result: @escaping FlutterResult) {
        do {
            try Amplify.add(plugin: AWSPinpointAnalyticsPlugin() )
            result(true)
        } catch let error{
            if(error is AnalyticsError){
                let analyticsError = error as! AnalyticsError
                
                ErrorUtil.postErrorToFlutterChannel(
                    result: result,
                    errorCode: "AnalyticsException",
                    details: [
                        "message" : analyticsError.errorDescription,
                        "recoverySuggestion" : analyticsError.recoverySuggestion,
                        "underlyingError": analyticsError.underlyingError != nil ? analyticsError.underlyingError!.localizedDescription : ""
                    ])
            }
            else{
                print("Failed to add Amplify Analytics Plugin \(error)")
                result(false)
            }
            return
        }
    }

    public static func record(arguments: Any?, result: @escaping FlutterResult, bridge: AnalyticsBridge){
        let argumentsMap = arguments as! Dictionary<String, Any>
        let name = argumentsMap["name"] as! String
        let event: BasicAnalyticsEvent
        
        if(argumentsMap["propertiesMap"] != nil){
            let analyticsProperties = AmplifyAnalyticsBuilder.createAnalyticsProperties(map: argumentsMap)
            event = BasicAnalyticsEvent(name: name, properties: analyticsProperties )
        }
        else{
            event = BasicAnalyticsEvent(name: name)
        }
        
        bridge.record(event: event)
        result(true);
    }

    public static func flushEvents(result: @escaping FlutterResult, bridge: AnalyticsBridge){
        bridge.flushEvents()
        result(true);
    }
    
    public static func registerGlobalProperties(arguments: Any?, result: @escaping FlutterResult, bridge: AnalyticsBridge){
        let argumentsMap = arguments as! Dictionary<String, Any>
        let analyticsProperties = AmplifyAnalyticsBuilder.createAnalyticsProperties(map: argumentsMap)
        bridge.registerGlobalProperties(analyticsProperties: analyticsProperties)
        result(true);
    }
    
    public static func unregisterGlobalProperties(arguments: Any?, result: @escaping FlutterResult, bridge: AnalyticsBridge){
        let propertyNames = Set<String>(arguments as! Array<String>)
        
        if(propertyNames.count == 0){
            bridge.unregisterGlobalProperties()
        }
        else{
            bridge.unregisterGlobalProperties(propertyNames: propertyNames)
        }
        result(true);
    }
    
    public static func enable(result: @escaping FlutterResult, bridge: AnalyticsBridge){
        bridge.enable()
        result(true);
    }
    
    public static func disable(result: @escaping FlutterResult, bridge: AnalyticsBridge){
        bridge.disable()
        result(true);
    }
    
    public static func identifyUser(arguments: Any?, result: @escaping FlutterResult, bridge: AnalyticsBridge){
        let arguments = arguments as! Dictionary<String, Any>

        let userId = arguments["userId"] as! String
        let userProfileMap = arguments["userProfileMap"] as! Dictionary<String, Any>

        bridge.identifyUser(userId, withProfile: AmplifyAnalyticsBuilder.createUserProfile(userProfileMap: userProfileMap))
        result(true);
    }
}
