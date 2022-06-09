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
import amplify_flutter_ios

public enum FlutterAnalytics {
    public static func addPlugin(result: @escaping FlutterResult) {
        do {
            try Amplify.add(plugin: AWSPinpointAnalyticsPlugin())
            result(true)
        } catch let analyticsError as AnalyticsError {
            ErrorUtil.postErrorToFlutterChannel(
                result: result,
                errorCode: "AnalyticsException",
                details: [
                    "message": analyticsError.errorDescription,
                    "recoverySuggestion": analyticsError.recoverySuggestion,
                    "underlyingError": analyticsError.underlyingError?.localizedDescription ?? ""
                ])
        } catch let configError as ConfigurationError {
            var errorCode = "AnalyticsException"
            if case .amplifyAlreadyConfigured = configError {
               errorCode = "AmplifyAlreadyConfiguredException"
            }
            ErrorUtil.postErrorToFlutterChannel(
                result: result,
                errorCode: errorCode,
                details: [
                    "message": configError.errorDescription,
                    "recoverySuggestion": configError.recoverySuggestion,
                    "underlyingError": configError.underlyingError?.localizedDescription ?? ""
                ])
        } catch {
            ErrorUtil.postErrorToFlutterChannel(
                result: result,
                errorCode: "UNKNOWN",
                details: ["message": error.localizedDescription])
        }
    }

    public static func record(
        arguments: Any?,
        result: @escaping FlutterResult,
        bridge: AnalyticsPinpointBridge
    ) {
        guard let argumentsMap = arguments as? [String: Any],
              let name = argumentsMap["name"] as? String
        else {
            result(invalidArgumentsError)
            return
        }

        let event: BasicAnalyticsEvent

        if argumentsMap["propertiesMap"] != nil {
            let analyticsProperties = AmplifyAnalyticsBuilder.createAnalyticsProperties(map: argumentsMap)
            event = BasicAnalyticsEvent(name: name, properties: analyticsProperties )
        } else {
            event = BasicAnalyticsEvent(name: name)
        }

        bridge.record(event: event)
        result(true)
    }

    public static func flushEvents(result: @escaping FlutterResult, bridge: AnalyticsPinpointBridge) {
        bridge.flushEvents()
        result(true)
    }

    public static func registerGlobalProperties(
        arguments: Any?,
        result: @escaping FlutterResult,
        bridge: AnalyticsPinpointBridge
    ) {
        guard let argumentsMap = arguments as? [String: Any] else {
            result(invalidArgumentsError)
            return
        }
        let analyticsProperties = AmplifyAnalyticsBuilder.createAnalyticsProperties(map: argumentsMap)
        bridge.registerGlobalProperties(analyticsProperties: analyticsProperties)
        result(true)
    }

    public static func unregisterGlobalProperties(
        arguments: Any?,
        result: @escaping FlutterResult,
        bridge: AnalyticsPinpointBridge
    ) {
        guard let arguments = arguments as? [String] else {
            result(invalidArgumentsError)
            return
        }

        let propertyNames = Set(arguments)
        if propertyNames.isEmpty {
            bridge.unregisterGlobalProperties()
        } else {
            bridge.unregisterGlobalProperties(propertyNames: propertyNames)
        }
        result(true)
    }

    public static func enable(result: @escaping FlutterResult, bridge: AnalyticsPinpointBridge) {
        bridge.enable()
        result(true)
    }

    public static func disable(result: @escaping FlutterResult, bridge: AnalyticsPinpointBridge) {
        bridge.disable()
        result(true)
    }

    public static func identifyUser(arguments: Any?, result: @escaping FlutterResult, bridge: AnalyticsPinpointBridge) {
        guard let arguments = arguments as? [String: Any],
              let userId = arguments["userId"] as? String,
              let userProfileMap = arguments["userProfileMap"] as? [String: Any]
        else {
            result(invalidArgumentsError)
            return
        }

        bridge.identifyUser(
            userId,
            withProfile: AmplifyAnalyticsBuilder.createUserProfile(userProfileMap: userProfileMap))
        result(true)
    }
}
