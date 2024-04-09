//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// The `ModelKey` protocol is used to decorate Swift standard's `CodingKey` enum with
/// query functions and operators that are used to build query conditions.
///
/// ```
/// let post = Post.keys
///
/// Amplify.DataStore.query(Post.self, where: {
///     post.title.contains("[Amplify]")
///     .and(post.content.ne(nil))
/// })
/// ```
///
/// **Using Operators:**
///
/// The operators on a `ModelKey` reference are defined so queries can also be written
/// with Swift operators as well:
///
/// ```
/// let post = Post.keys
///
/// Amplify.DataStore.query(Post.self, where: {
///     post.title ~= "[Amplify]" &&
///     post.content != nil
/// })
/// ```
public protocol ModelKey: CodingKey, CaseIterable, QueryFieldOperation {}

extension CodingKey where Self: ModelKey {

    // MARK: - beginsWith
    public func beginsWith(_ value: String) -> QueryPredicateOperation {
        return field(stringValue).beginsWith(value)
    }

    // MARK: - between
    public func between(start: Persistable, end: Persistable) -> QueryPredicateOperation {
        return field(stringValue).between(start: start, end: end)
    }

    // MARK: - contains

    public func contains(_ value: String) -> QueryPredicateOperation {
        return field(stringValue).contains(value)
    }

    public static func ~= (key: Self, value: String) -> QueryPredicateOperation {
        return key.contains(value)
    }

    // MARK: - not contains
    public func notContains(_ value: String) -> QueryPredicateOperation {
        return field(stringValue).notContains(value)
    }

    // MARK: - eq

    public func eq(_ value: Persistable?) -> QueryPredicateOperation {
        return field(stringValue).eq(value)
    }

    public func eq(_ value: EnumPersistable) -> QueryPredicateOperation {
        return field(stringValue).eq(value)
    }

    public static func == (key: Self, value: Persistable?) -> QueryPredicateOperation {
        return key.eq(value)
    }

    public static func == (key: Self, value: EnumPersistable) -> QueryPredicateOperation {
        return key.eq(value)
    }

    // MARK: - ge

    public func ge(_ value: Persistable) -> QueryPredicateOperation {
        return field(stringValue).ge(value)
    }

    public static func >= (key: Self, value: Persistable) -> QueryPredicateOperation {
        return key.ge(value)
    }

    // MARK: - gt

    public func gt(_ value: Persistable) -> QueryPredicateOperation {
        return field(stringValue).gt(value)
    }

    public static func > (key: Self, value: Persistable) -> QueryPredicateOperation {
        return key.gt(value)
    }

    // MARK: - le

    public func le(_ value: Persistable) -> QueryPredicateOperation {
        return field(stringValue).le(value)
    }

    public static func <= (key: Self, value: Persistable) -> QueryPredicateOperation {
        return key.le(value)
    }

    // MARK: - lt

    public func lt(_ value: Persistable) -> QueryPredicateOperation {
        return field(stringValue).lt(value)
    }

    public static func < (key: Self, value: Persistable) -> QueryPredicateOperation {
        return key.lt(value)
    }

    // MARK: - ne

    public func ne(_ value: Persistable?) -> QueryPredicateOperation {
        return field(stringValue).ne(value)
    }

    public func ne(_ value: EnumPersistable) -> QueryPredicateOperation {
        return field(stringValue).ne(value)
    }

    public static func != (key: Self, value: Persistable?) -> QueryPredicateOperation {
        return key.ne(value)
    }

    public static func != (key: Self, value: EnumPersistable) -> QueryPredicateOperation {
        return key.ne(value)
    }

}
