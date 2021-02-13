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

import XCTest
import Amplify
@testable import AmplifyPlugins
@testable import amplify_analytics_pinpoint

class AnalyticsUnitTests: XCTestCase {

    var pluginUnderTest: SwiftAmplifyAnalyticsPinpointPlugin = SwiftAmplifyAnalyticsPinpointPlugin()

    func test_recordEvent_returnsSuccess() throws {
        class MockAnalyticsBridge: AnalyticsBridge {
            override func record(event: AnalyticsEvent){
                XCTAssertEqual(event.name, "amplify-event")
            }
        }
        
        pluginUnderTest = SwiftAmplifyAnalyticsPinpointPlugin(bridge: MockAnalyticsBridge())
        
        pluginUnderTest.innerHandle(
            method: "recordEvent",
            callArgs: [
                "name" : "amplify-event"
            ],
            result: { (results) in
                XCTAssertEqual(results as! Bool, true)
            }
        )
    }
    
    func test_recordEvent_withProperties_returnsSuccess() throws {
        
        class MockAnalyticsBridge: AnalyticsBridge {
            let propertiesMap : [String : Any] = [
                "AnalyticsStringProperty" : "Pancakes",
                "AnalyticsBooleanProperty" : true,
                "AnalyticsDoubleProperty" : 3.14,
                "AnalyticsIntegerProperty" : 42
            ]
            
            override func record(event: AnalyticsEvent){
                XCTAssertEqual(event.name, "amplify-event")
                
                let properties = event.properties!
                XCTAssertEqual(propertiesMap["AnalyticsStringProperty"] as! String, properties["AnalyticsStringProperty"] as! String)
                XCTAssertEqual(propertiesMap["AnalyticsBooleanProperty"] as! Bool, properties["AnalyticsBooleanProperty"] as! Bool)
                XCTAssertEqual(propertiesMap["AnalyticsDoubleProperty"] as! Double, properties["AnalyticsDoubleProperty"] as! Double)
                XCTAssertEqual(propertiesMap["AnalyticsIntegerProperty"] as! Int, properties["AnalyticsIntegerProperty"] as! Int)
                XCTAssertEqual(propertiesMap.count, properties.count)
            }
        }
        
        pluginUnderTest = SwiftAmplifyAnalyticsPinpointPlugin(bridge: MockAnalyticsBridge())
        
        let propertiesMap : [String : Any] = [
            "AnalyticsStringProperty" : "Pancakes",
            "AnalyticsBooleanProperty" : true,
            "AnalyticsDoubleProperty" : 3.14,
            "AnalyticsIntegerProperty" : 42
        ]
        let propertiesTypesMap : [String : String] = [
            "AnalyticsStringProperty" : "STRING",
            "AnalyticsBooleanProperty" : "BOOL",
            "AnalyticsDoubleProperty" : "DOUBLE",
            "AnalyticsIntegerProperty" : "INT"
        ]
        let arguments: [String : Any] = [
            "name" : "amplify-event",
            "propertiesMap" : propertiesMap,
            "propertiesTypesMap" : propertiesTypesMap
        ]
        
        pluginUnderTest.innerHandle(
            method: "recordEvent",
            callArgs: arguments,
            result: { (results) in
                XCTAssertEqual(results as! Bool, true)
            }
        )
    }
    
    func test_flushEvents_returnsSuccess() throws {
        class MockAnalyticsBridge: AnalyticsBridge {
            override func flushEvents(){
            }
        }
        
        pluginUnderTest = SwiftAmplifyAnalyticsPinpointPlugin(bridge: MockAnalyticsBridge())
        
        pluginUnderTest.innerHandle(
            method: "flushEvents",
            callArgs: nil,
            result: { (results) in
                XCTAssertEqual(results as! Bool, true)
            }
        )
    }
    
    func test_registerGlobalProperties_withProperties_returnsSuccess() throws {
        class MockAnalyticsBridge: AnalyticsBridge {
            let propertiesMap : [String : Any] = [
                "AnalyticsStringProperty" : "Pancakes",
                "AnalyticsBooleanProperty" : true,
                "AnalyticsDoubleProperty" : 3.14,
                "AnalyticsIntegerProperty" : 42
            ]
            
            override func registerGlobalProperties(analyticsProperties: AnalyticsProperties){
                XCTAssertEqual(propertiesMap["AnalyticsStringProperty"] as! String, analyticsProperties["AnalyticsStringProperty"] as! String)
                XCTAssertEqual(propertiesMap["AnalyticsBooleanProperty"] as! Bool, analyticsProperties["AnalyticsBooleanProperty"] as! Bool)
                XCTAssertEqual(propertiesMap["AnalyticsDoubleProperty"] as! Double, analyticsProperties["AnalyticsDoubleProperty"] as! Double)
                XCTAssertEqual(propertiesMap["AnalyticsIntegerProperty"] as! Int, analyticsProperties["AnalyticsIntegerProperty"] as! Int)
                XCTAssertEqual(propertiesMap.count, analyticsProperties.count)
            }
        }
        
        pluginUnderTest = SwiftAmplifyAnalyticsPinpointPlugin(bridge: MockAnalyticsBridge())
        
        let propertiesMap : [String : Any] = [
            "AnalyticsStringProperty" : "Pancakes",
            "AnalyticsBooleanProperty" : true,
            "AnalyticsDoubleProperty" : 3.14,
            "AnalyticsIntegerProperty" : 42
        ]
        let propertiesTypesMap : [String : String] = [
            "AnalyticsStringProperty" : "STRING",
            "AnalyticsBooleanProperty" : "BOOL",
            "AnalyticsDoubleProperty" : "DOUBLE",
            "AnalyticsIntegerProperty" : "INT"
        ]
        let arguments: [String : Any] = [
            "propertiesMap" : propertiesMap,
            "propertiesTypesMap" : propertiesTypesMap
        ]
        
        pluginUnderTest.innerHandle(
            method: "registerGlobalProperties",
            callArgs: arguments,
            result: { (results) in
                XCTAssertEqual(results as! Bool, true)
            }
        )
    }
    
    func test_identifyUser_withProperties_returnsSuccess() throws {
        class MockAnalyticsBridge: AnalyticsBridge {
            override func identifyUser(_ identityId: String, withProfile userProfile: AnalyticsUserProfile? = nil) {
                
                let user : AnalyticsUserProfile = userProfile!
                XCTAssertEqual(user.name, "test-user")
                XCTAssertEqual(user.email, "user.com")
                XCTAssertEqual(user.plan, "test-plan")

                let location : AnalyticsUserProfile.Location = user.location!
                XCTAssertEqual(location.latitude, 47.6154086)
                XCTAssertEqual(location.longitude, -122.3349685)
                XCTAssertEqual(location.postalCode, "98122")
                XCTAssertEqual(location.city, "Seattle")
                XCTAssertEqual(location.region, "WA")
                XCTAssertEqual(location.country, "USA")
                
                let properties : AnalyticsProperties = user.properties!
                XCTAssertEqual(properties["TestStringProperty"] as! String, "TestStringValue")
                XCTAssertEqual(properties["TestDoubleProperty"] as! Double, 3.14)
                XCTAssertEqual(properties["TestBoolProperty"] as! Bool, true)
                XCTAssertEqual(properties["TestIntProperty"] as! Int, 1)
            }
        }
        
        pluginUnderTest = SwiftAmplifyAnalyticsPinpointPlugin(bridge: MockAnalyticsBridge())
        
        let locationMap : [String : Any] = [
            "latitude" : 47.6154086,
            "longitude" : -122.3349685,
            "postalCode" : "98122",
            "city" : "Seattle",
            "region" : "WA",
            "country" : "USA"
        ]

        let customPropertiesMap : [String : Any] = [
            "TestStringProperty" : "TestStringValue",
            "TestDoubleProperty" : 3.14,
            "TestBoolProperty" : true,
            "TestIntProperty" : 1
        ]
        let customPropertiesTypesMap : [String : String] = [
            "TestStringProperty" : "STRING",
            "TestDoubleProperty" : "DOUBLE",
            "TestBoolProperty" : "BOOL",
            "TestIntProperty" : "INT"
        ]

        let userProfileMap : [String : Any] = [
            "name" : "test-user",
            "email" : "user.com",
            "plan" : "test-plan",
            "location" : locationMap,
            "propertiesMap" : customPropertiesMap,
            "propertiesTypesMap" : customPropertiesTypesMap
        ]

        let userMap : [String : Any] = [
            "userId" : "userId",
            "userProfileMap" : userProfileMap
        ]

        pluginUnderTest.innerHandle(
            method: "identifyUser",
            callArgs: userMap,
            result: { (results) in
                XCTAssertEqual(results as! Bool, true)
            }
        )
    }
    
    func test_identifyUser_withNoLocation_returnsSuccess() throws {
        class MockAnalyticsBridge: AnalyticsBridge {
            override func identifyUser(_ identityId: String, withProfile userProfile: AnalyticsUserProfile? = nil) {
                let user : AnalyticsUserProfile = userProfile!
                XCTAssertEqual(user.name, "test-user")
                XCTAssertEqual(user.email, "user.com")
                XCTAssertEqual(user.plan, "test-plan")
            }
        }
        
        pluginUnderTest = SwiftAmplifyAnalyticsPinpointPlugin(bridge: MockAnalyticsBridge())
        
        let userProfileMap : [String : Any] = [
            "name" : "test-user",
            "email" : "user.com",
            "plan" : "test-plan"
        ]

        let userMap : [String : Any] = [
            "userId" : "userId",
            "userProfileMap" : userProfileMap
        ]

        pluginUnderTest.innerHandle(
            method: "identifyUser",
            callArgs: userMap,
            result: { (results) in
                XCTAssertEqual(results as! Bool, true)
            }
        )
    }
 

}

