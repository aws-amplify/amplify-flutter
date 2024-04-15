//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

/// Analytics category plugin
public protocol AnalyticsCategoryPlugin: Plugin, AnalyticsCategoryBehavior { }

public extension AnalyticsCategoryPlugin {
    /// Analytics category type
    var categoryType: CategoryType {
        return .analytics
    }
}
