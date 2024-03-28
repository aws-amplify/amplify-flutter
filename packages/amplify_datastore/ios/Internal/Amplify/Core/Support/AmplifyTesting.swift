//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Support for testing in Amplify
enum AmplifyTesting {

    /// Instance factory to use during testing.
    private static var instanceFactory: InstanceFactory?

    /// Indicates if XCTest is running.
    private static var isTesting: Bool {
        ProcessInfo.processInfo.environment["XCTestConfigurationFilePath"] != nil
    }

    static func assign(instanceFactory: InstanceFactory?) {
        Self.instanceFactory = instanceFactory
    }

    /// Returns an instance factory only while testing
    static func getInstanceFactory() -> InstanceFactory? {
        isTesting ? instanceFactory : nil
    }

}
