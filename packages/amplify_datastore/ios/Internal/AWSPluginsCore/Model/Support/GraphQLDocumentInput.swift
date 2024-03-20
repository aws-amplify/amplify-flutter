//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Contains the `type` of the GraphQL document input parameter as a string value and `GraphQLDocumentInputValue`
public struct GraphQLDocumentInput {

    public var type: String

    public var value: GraphQLDocumentInputValue

    public init(type: String, value: GraphQLDocumentInputValue) {
        self.type = type
        self.value = value
    }
}
