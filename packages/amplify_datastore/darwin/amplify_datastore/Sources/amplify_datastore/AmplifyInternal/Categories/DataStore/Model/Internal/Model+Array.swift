//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

extension Array where Element: Model {

    /// - Warning: Although this has `public` access, it is intended for internal & codegen use and should not be used
    ///   directly by host applications. The behavior of this may change without warning. Though it is not used by host
    ///   application making any change to these `public` types should be backward compatible, otherwise it will be a
    ///   breaking change.
    public func unique() throws -> Element? {
        guard (0 ... 1).contains(count) else {
            throw DataStoreError.nonUniqueResult(model: Element.modelName, count: count)
        }
        return first
    }
}

extension Array where Element == Model {

    /// - Warning: Although this has `public` access, it is intended for internal & codegen use and should not be used
    ///   directly by host applications. The behavior of this may change without warning. Though it is not used by host
    ///   application making any change to these `public` types should be backward compatible, otherwise it will be a
    ///   breaking change.
    public func unique() throws -> Element? {
        guard (0 ... 1).contains(count) else {
            let firstModelName = self[0].modelName
            throw DataStoreError.nonUniqueResult(model: firstModelName, count: count)
        }
        return first
    }
}
