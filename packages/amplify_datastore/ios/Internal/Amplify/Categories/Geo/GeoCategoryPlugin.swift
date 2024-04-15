//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

/// Geo category plugin
public protocol GeoCategoryPlugin: Plugin, GeoCategoryBehavior { }

public extension GeoCategoryPlugin {
    /// Geo category type
    var categoryType: CategoryType {
        return .geo
    }
}
