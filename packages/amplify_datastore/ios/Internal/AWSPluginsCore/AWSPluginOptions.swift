//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation
import Amplify

/// Plugin specific options type
///
/// - Warning: Although this has `public` access, it is intended for internal use and should not be used directly
///   by host applications. The behavior of this may change without warning.
///
/// This method was used internally by DataStore to pass information to APIPlugin, it
/// has since been renamed to `AWSDataStorePluginOptions`. For customers
/// looking to use the runtime authType parameter, this is a feature that should result in
/// an options object on APIPlugin as something like `AWSAPIPluginOptions`, ie.
///
///```swift
///public struct AWSAPIPluginOptions {
///    /// authorization type
///    public let authType: AWSAuthorizationType?
///
///    public init(authType: AWSAuthorizationType?) {
///        self.authType = authType
///    }
///}
///```
@available(*, deprecated, message: "Intended for internal use.")
public struct AWSPluginOptions {

    /// authorization type
    public let authType: AWSAuthorizationType?

    /// name of the model
    public let modelName: String?

    public init(authType: AWSAuthorizationType?,
                modelName: String) {
        self.authType = authType
        self.modelName = modelName
    }
}
