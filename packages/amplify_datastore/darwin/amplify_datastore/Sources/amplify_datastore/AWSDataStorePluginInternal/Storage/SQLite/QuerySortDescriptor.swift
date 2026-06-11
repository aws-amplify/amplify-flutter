//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Struct used by the Datastore plugin to decide on how to order a query.
public struct QuerySortDescriptor {

    /// String representation of the CodingKey value of the field to be sorted.
    ///
    /// fieldName for a field createdBy inside Post model can be retreived by `Post.keys.createdBy.stringValue`.
    let fieldName: String

    /// Sorting order for the field
    let order: QuerySortOrder

    public init(fieldName: String, order: QuerySortOrder) {
        self.fieldName = fieldName
        self.order = order
    }
}

public enum QuerySortOrder: String {

    case ascending = "asc"

    case descending = "desc"
}

extension Array where Element == QuerySortDescriptor {

    /// Generates the sorting part of the sql statement.
    ///
    /// For a sort description of ascending on `Post.createdAt` will return the string `"\"root\".\"createdAt\" asc"`
    /// where `root` is the namespace.
    func sortStatement(namespace: String) -> String {
        let sqlResult = map { Array.columnFor(field: $0.fieldName,
                                              order: $0.order.rawValue,
                                              namespace: namespace) }
        return sqlResult.joined(separator: ", ")
    }

    static func columnFor(field: String,
                          order: String,
                          namespace: String) -> String {
        return namespace.quoted() + "." + field.quoted() + " " + order

    }
}
