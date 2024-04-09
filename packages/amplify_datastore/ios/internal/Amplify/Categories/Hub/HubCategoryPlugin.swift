//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

public protocol HubCategoryPlugin: Plugin, HubCategoryBehavior { }

public extension HubCategoryPlugin {
    var categoryType: CategoryType {
        return .hub
    }
}
