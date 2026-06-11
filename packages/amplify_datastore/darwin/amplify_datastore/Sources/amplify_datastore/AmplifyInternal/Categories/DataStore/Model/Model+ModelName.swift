//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

extension Model {

    public static var modelName: String {
        return String(describing: self)
    }

    public var modelName: String {
        return type(of: self).modelName
    }
}
