// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import XCTest
@testable import Amplify
@testable import amplify_flutter_ios

class amplify_flutter_exampleTests: XCTestCase {
    
    override func setUp() {
        Amplify.reset()
    }

    var plugin: SwiftAmplify = SwiftAmplify()

    func test_configuring_multiple_times_throws() throws {
        let _args = ["version": "1", "configuration": "{}"]
        let call = FlutterMethodCall(methodName: "configure", arguments: _args)
        plugin.handle(call, result: {(result)->Void in
            if (result as? Bool) != nil {} else {
                XCTFail("First time should be a success")
            }
        })
        plugin.handle(call, result: {(result)->Void in
            
            if let exception = result as? FlutterError {
                XCTAssertEqual(exception.code, "AmplifyAlreadyConfiguredException")
                XCTAssertEqual(exception.message, ErrorMessages.defaultFallbackErrorMessage)
                XCTAssertEqual(exception.details as? [String: String], ["underlyingException": "nil",
                                                                        "recoverySuggestion": "Remove the duplicate call to `Amplify.configure()`",
                                                                        "message": "Amplify has already been configured."])
            } else {
                XCTFail("Second time configure should be an exception")
            }
        })
    }

    func test_plugin_configuration_error() throws {
        class MockAnalyticsCategoryPluginThrowFromConfigure: MockAnalyticsCategoryPlugin {
            override func configure(using configuration: Any?) throws {
                throw PluginError.pluginConfigurationError("This plugin configuration doesn't exist", "some recovery, doesn't matter", nil)
            }
        }
        try Amplify.add(plugin: MockAnalyticsCategoryPluginThrowFromConfigure())
        let _args = ["version": "1", "configuration": "{}"]
        let call = FlutterMethodCall(methodName: "configure", arguments: _args)
        plugin.handle(call, result: {(result)->Void in
            if let exception = result as? FlutterError {
                XCTAssertEqual(exception.code, "AmplifyException")
                XCTAssertEqual(exception.message, ErrorMessages.defaultFallbackErrorMessage)
                XCTAssertEqual(exception.details as? [String: String], ["recoverySuggestion": "Remove amplify plugins from your pubspec.yaml " +
                                                                            "that you are not using in your app.",
                                                                        "message": "Please check your pubspec.yaml if you are depending on an " +
                                                                            "amplify plugin and not using in your app. Underlying error message: " +
                                                                            "This plugin configuration doesn\'t exist"])
            }
        })
    }
}
