//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

public protocol AuthCategoryPlugin: Plugin, AuthCategoryBehavior {}

public extension AuthCategoryPlugin {
    var categoryType: CategoryType {
        return .auth
    }
}
