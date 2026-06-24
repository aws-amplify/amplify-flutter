//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// API Category Auth provider Factory Behavior
public protocol APICategoryAuthProviderFactoryBehavior {

    /// Retrieve the auth provider factory
    func apiAuthProviderFactory() -> APIAuthProviderFactory
}
