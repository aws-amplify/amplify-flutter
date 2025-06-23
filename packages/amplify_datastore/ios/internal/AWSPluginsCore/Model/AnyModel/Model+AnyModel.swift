//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//


public extension Model {
    func eraseToAnyModel() throws -> AnyModel {
        AnyModel(self)
    }
}
