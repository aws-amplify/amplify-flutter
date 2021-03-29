//
//  AmplifyAddPluginTests.swift
//  unit_tests
//
//  Created by Admin on 3/26/21.
//

import XCTest
import Amplify
import AmplifyPlugins
import AWSCore
import amplify_core

@testable import amplify_analytics_pinpoint

class AmplifyAddPluginTests: XCTestCase {
    
    var flutterPlugin: SwiftAmplifyAnalyticsPinpointPlugin = SwiftAmplifyAnalyticsPinpointPlugin()
    
    func test_addPlugin_returnsSuccess() throws {
        class MockAnalyticsBridge: AnalyticsBridge {
            override func addPlugin(){
            }
        }
        
        flutterPlugin = SwiftAmplifyAnalyticsPinpointPlugin(bridge: MockAnalyticsBridge())
        flutterPlugin.innerHandle(
            method: "addPlugin",
            callArgs: nil,
            result: { (results) in
                XCTAssertEqual(results as! Bool, true)
            }
        )
    }
    
    func test_addPlugin_throwsError() throws {
        class MockAnalyticsBridge: AnalyticsBridge {
            override func addPlugin() throws{
                throw AnalyticsError.configuration(
                    "errorDescription",
                    "recoverySuggestion")
            }
        }
        
        flutterPlugin = SwiftAmplifyAnalyticsPinpointPlugin(bridge: MockAnalyticsBridge())
        flutterPlugin.innerHandle(
            method: "addPlugin",
            callArgs: nil,
            result: { (results) in
                if let exception = results as? FlutterError {
                    XCTAssertEqual("AnalyticsException", exception.code)
                    XCTAssertEqual(ErrorMessages.defaultFallbackErrorMessage, exception.message)
                    let errorMap: [String: Any] = exception.details as! [String : Any]
                    XCTAssertEqual("errorDescription", errorMap["message"] as? String)
                    XCTAssertEqual("recoverySuggestion", errorMap["recoverySuggestion"] as? String)
                } else {
                    XCTFail()
                }
            }
        )
    }
}
