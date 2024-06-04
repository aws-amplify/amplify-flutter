//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// This protocol represents a statement that will be executed in a specific storage
/// implementations. Concrete types of this protocol may include SQL insert statements,
/// queries or GraphQL mutations.
public protocol DataStoreStatement {

    /// The type of the variables container related to a concrete statement implementation
    associatedtype Variables

    /// The type of the `Model` associated with a particular statement
    @available(*, deprecated, message: """
    Use of modelType inside the DatastoreStatement is deprecated, use modelSchema instead.
    """)
    var modelType: Model.Type { get }

    /// The model schema of the `Model` associated with a particular statement
    var modelSchema: ModelSchema { get }

    /// The actual string content of the statement (e.g. a SQL query or a GraphQL document)
    var stringValue: String { get }

    /// The variables associated with the statement
    var variables: Variables { get }
}
