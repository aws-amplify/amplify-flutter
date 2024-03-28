//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// A simple struct that holds pagination information that can be applied queries.
public struct QueryPaginationInput {

    /// The default page size.
    public static let defaultLimit: UInt = 100

    /// The page number. It starts at 0.
    public let page: UInt

    /// The number of results per page.
    public let limit: UInt

}

extension QueryPaginationInput {

    /// Creates a `QueryPaginationInput` in an expressive way, enabling a short
    /// and developer friendly access to an instance of `QueryPaginationInput`.
    ///
    /// - Parameters:
    ///   - page: the page number (starting at 0)
    ///   - limit: the page size (defaults to `QueryPaginationInput.defaultLimit`)
    /// - Returns: a new instance of `QueryPaginationInput`
    public static func page(_ page: UInt,
                            limit: UInt = QueryPaginationInput.defaultLimit) -> QueryPaginationInput {
        return QueryPaginationInput(page: page, limit: limit)
    }

    /// Utility that created a `QueryPaginationInput` with `page` 0 and `limit` 1
    public static var firstResult: QueryPaginationInput {
        .page(0, limit: 1)
    }

    /// Utility that created a `QueryPaginationInput` with `page` 0 and the default `limit`
    public static var firstPage: QueryPaginationInput {
        .page(0)
    }

}
