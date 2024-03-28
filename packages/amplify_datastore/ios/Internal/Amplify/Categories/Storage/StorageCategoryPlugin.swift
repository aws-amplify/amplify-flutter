//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

/// - Tag: StorageCategoryPlugin
public protocol StorageCategoryPlugin: Plugin, StorageCategoryBehavior { }

public extension StorageCategoryPlugin {
    var categoryType: CategoryType {
        return .storage
    }
}
