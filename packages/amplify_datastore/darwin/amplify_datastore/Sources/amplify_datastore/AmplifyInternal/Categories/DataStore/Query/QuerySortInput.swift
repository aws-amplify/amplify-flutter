//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// A simple enum that holding a sorting direction for a field that can be applied to queries.
public enum QuerySortBy {
    case ascending(CodingKey)
    case descending(CodingKey)
}

public struct QuerySortInput {
    public let inputs: [QuerySortBy]

    public init(_ inputs: [QuerySortBy]) {
        self.inputs = inputs
    }

    /// Creates a `QuerySortInput` in an expressive way, enabling a short
    /// and developer friendly access to an instance of `QuerySortInput`.
    /// Simply by calling:
    /// - Amplify.Datastore.query(model.self, sort: .ascending(model.keys.id))
    /// or
    /// - Amplify.Datastore.query(model.self, sort: .descending(model.keys.id))
    /// or
    /// - Amplify.Datastore.query(model.self, sort: .by(.ascending(model.keys.id), .descending(model.keys.createdAt))
    ///
    /// - Parameters:
    ///   - inputs: a variadic parameters that take uncertain number of `QuerySortBy`
    /// - Returns: a new instance of `QuerySortInput`
    public static func by(_ inputs: QuerySortBy...) -> QuerySortInput {
        return self.init(inputs)
    }

    /// Returns an ascending sort specifier for `field`
    public static func ascending(_ field: CodingKey) -> QuerySortInput {
        return QuerySortInput([.ascending(field)])
    }

    /// Returns an descending sort specifier for `field`
    public static func descending(_ field: CodingKey) -> QuerySortInput {
        return QuerySortInput([.descending(field)])
    }
}
