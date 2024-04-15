//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

/// The behavior that all LoggingPlugins provide
public protocol LoggingCategoryPlugin: Plugin, LoggingCategoryClientBehavior { }

public extension LoggingCategoryPlugin {
    var categoryType: CategoryType {
        return .logging
    }
}
