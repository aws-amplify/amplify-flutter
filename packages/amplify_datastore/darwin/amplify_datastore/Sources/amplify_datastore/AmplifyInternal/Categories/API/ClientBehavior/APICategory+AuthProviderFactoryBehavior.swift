//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

extension APICategory: APICategoryAuthProviderFactoryBehavior {

    /// Retrieve the plugin's auth provider factory
    ///
    /// - Returns: auth provider factory
    public func apiAuthProviderFactory() -> APIAuthProviderFactory {
        return plugin.apiAuthProviderFactory()
    }
}
