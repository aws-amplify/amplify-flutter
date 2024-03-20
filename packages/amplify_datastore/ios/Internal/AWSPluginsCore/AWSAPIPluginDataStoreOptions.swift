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
public struct AWSAPIPluginDataStoreOptions {

    /// authorization type
    public let authType: AWSAuthorizationType?

    /// name of the model
    public let modelName: String

    public init(authType: AWSAuthorizationType?,
                modelName: String) {
        self.authType = authType
        self.modelName = modelName
    }
}
