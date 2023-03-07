// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import XCTest
import Amplify

@testable import AmplifyPlugins
@testable import amplify_api_ios

class ApiPluginUnitTests: XCTestCase {
    typealias ResultType = String
    
    func test_add_plugin_no_error() async throws {
        let pluginUnderTest = SwiftAmplifyApiPlugin()
        let result = await pluginUnderTest.addPluginAuthProvidersList([])
        XCTAssertEqual(result, 1)
    }
}

