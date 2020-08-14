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

import Amplify
import AmplifyPlugins

public class AmplifyAnalyticsBridge {

    public static func recordEvent(arguments: Any?, result: @escaping FlutterResult){
        let argumentsMap = arguments as! Dictionary<String, AnyObject>

        let name = argumentsMap["name"] as! String
        let propertiesMap = argumentsMap["propertiesMap"] as! Dictionary<String, AnyObject>
        
        let event = BasicAnalyticsEvent(name: name, properties: AmplifyAnalyticsBuilder.createAnalyticsProperties(propertiesMap: propertiesMap))
        Amplify.Analytics.record(event: event)
        
        result(true);
    }

    public static func flushEvents(result: @escaping FlutterResult){
        Amplify.Analytics.flushEvents()
        result(true);
    }
    
    public static func registerGlobalProperties(arguments: Any?, result: @escaping FlutterResult){
        let propertiesMap = arguments as! Dictionary<String , AnyObject>
        Amplify.Analytics.registerGlobalProperties(AmplifyAnalyticsBuilder.createAnalyticsProperties(propertiesMap: propertiesMap))
        result(true);
    }
    
    public static func unregisterGlobalProperties(arguments: Any?, result: @escaping FlutterResult){
        let propertyNames = Set<String>(arguments as! Array<String>)
        
        if(propertyNames.count == 0){
            Amplify.Analytics.unregisterGlobalProperties()
        }
        else{
            Amplify.Analytics.unregisterGlobalProperties(propertyNames)
        }

        result(true);
    }
    
    public static func enable(result: @escaping FlutterResult){
        Amplify.Analytics.enable()
        result(true);
    }
    
    public static func disable(result: @escaping FlutterResult){
        Amplify.Analytics.disable()
        result(true);
    }
    
    public static func identifyUser(arguments: Any?, result: @escaping FlutterResult){
        let arguments = arguments as! Dictionary<String, AnyObject>

        let userId = arguments["userId"] as! String
        let userProfileMap = arguments["userProfileMap"] as! Dictionary<String, AnyObject>

        Amplify.Analytics.identifyUser(userId, withProfile: AmplifyAnalyticsBuilder.createUserProfile(userProfileMap: userProfileMap))
        result(true);
    }
}
