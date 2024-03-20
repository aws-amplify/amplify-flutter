//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation
import Amplify

/// Represents different auth strategies supported by a client
/// interfacing with an AppSync backend
public enum AuthModeStrategyType {
    /// Default authorization type read from API configuration
    case `default`

    /// Uses schema metadata to create a prioritized list of potential authorization types
    /// that could be used for a request. The client iterates through that list until one of the
    /// avaialable types succeeds or all of them fail.
    case multiAuth

    public func resolveStrategy() -> AuthModeStrategy {
        switch self {
        case .default:
            return AWSDefaultAuthModeStrategy()
        case .multiAuth:
            return AWSMultiAuthModeStrategy()
        }
    }
}

/// Methods for checking user current status
public protocol AuthModeStrategyDelegate: AnyObject {
    func isUserLoggedIn() async -> Bool
}

/// Represents an authorization strategy used by DataStore
public protocol AuthModeStrategy: AnyObject {

    var authDelegate: AuthModeStrategyDelegate? { get set }

    init()

    func authTypesFor(schema: ModelSchema, operation: ModelOperation) async -> AWSAuthorizationTypeIterator

    func authTypesFor(schema: ModelSchema, operations: [ModelOperation]) async -> AWSAuthorizationTypeIterator
}

/// AuthorizationType iterator with an extra `count` property used
/// to predict the number of values
public protocol AuthorizationTypeIterator {
    associatedtype AuthorizationType

    init(withValues: [AuthorizationType])

    /// Total number of values
    var count: Int { get }
    
    /// Whether iterator has next available `AuthorizationType` to return or not
    var hasNext: Bool { get }

    /// Next available `AuthorizationType` or `nil` if exhausted
    mutating func next() -> AuthorizationType?
}

/// AuthorizationTypeIterator for values of type `AWSAuthorizationType`
public struct AWSAuthorizationTypeIterator: AuthorizationTypeIterator {
    public typealias AuthorizationType = AWSAuthorizationType

    private var values: IndexingIterator<[AWSAuthorizationType]>
    private var _count: Int
    private var _position: Int

    public init(withValues values: [AWSAuthorizationType]) {
        self.values = values.makeIterator()
        self._count = values.count
        self._position = 0
    }

    public var count: Int {
        _count
    }
    
    public var hasNext: Bool {
        _position < _count
    }

    public mutating func next() -> AWSAuthorizationType? {
        if let value = values.next() {
            _position += 1
            return value
        }
        
        return nil
    }
}

// MARK: - AWSDefaultAuthModeStrategy

/// AWS default auth mode strategy.
///
/// Returns an empty AWSAuthorizationTypeIterator, so we can just rely on the default authorization type
/// registered as interceptor for the API
public class AWSDefaultAuthModeStrategy: AuthModeStrategy {
    public weak var authDelegate: AuthModeStrategyDelegate?
    required public init() {}

    public func authTypesFor(schema: ModelSchema,
                             operation: ModelOperation) -> AWSAuthorizationTypeIterator {
        return AWSAuthorizationTypeIterator(withValues: [])
    }

    public func authTypesFor(schema: ModelSchema,
                             operations: [ModelOperation]) -> AWSAuthorizationTypeIterator {
        return AWSAuthorizationTypeIterator(withValues: [])
    }
}

// MARK: - AWSMultiAuthModeStrategy

/// Multi-auth strategy implementation based on schema metadata
public class AWSMultiAuthModeStrategy: AuthModeStrategy {
    public weak var authDelegate: AuthModeStrategyDelegate?

    private typealias AuthPriority = Int

    required public init() {}

    private static func defaultAuthTypeFor(authStrategy: AuthStrategy) -> AWSAuthorizationType {
        var defaultAuthType: AWSAuthorizationType
        switch authStrategy {
        case .owner:
            defaultAuthType = .amazonCognitoUserPools
        case .groups:
            defaultAuthType = .amazonCognitoUserPools
        case .private:
            defaultAuthType = .amazonCognitoUserPools
        case .public:
            defaultAuthType = .apiKey
        case .custom:
            defaultAuthType = .function
        }
        return defaultAuthType
    }

    /// Given an auth rule, returns the corresponding AWSAuthorizationType
    /// - Parameter authRule: authorization rule
    /// - Returns: returns corresponding AWSAuthorizationType or a default
    private static func authTypeFor(authRule: AuthRule) -> AWSAuthorizationType {
        if let authProvider = authRule.provider {
            return authProvider.toAWSAuthorizationType()
        }

        return defaultAuthTypeFor(authStrategy: authRule.allow)
    }

    /// Given an auth rule strategy returns its corresponding priority.
    /// Strategies are ordered from "most specific" to "least specific".
    /// - Parameter authStrategy: auth rule strategy
    /// - Returns: priority
    private static func priorityOf(authStrategy: AuthStrategy) -> AuthPriority {
        switch authStrategy {
        case .custom:
            return 0
        case .owner:
            return 1
        case .groups:
            return 2
        case .private:
            return 3
        case .public:
            return 4
        }
    }

    /// Given an auth rule provider returns its corresponding priority.
    /// Providers are ordered from "most specific" to "least specific".
    /// - Parameter authRuleProvider: auth rule provider
    /// - Returns: priority
    private static func priorityOf(authRuleProvider provider: AuthRuleProvider) -> AuthPriority {
        switch provider {
        case .function:
            return 0
        case .userPools:
            return 1
        case .oidc:
            return 2
        case .iam:
            return 3
        case .apiKey:
            return 4
        }
    }

    /// A predicate used to sort Auth rules according to above priority rules
    /// Use provider priority to sort if rules have the same strategy
    private static let comparator = { (rule1: AuthRule, rule2: AuthRule) -> Bool in
        if let providerRule1 = rule1.provider,
           let providerRule2 = rule2.provider, rule1.allow == rule2.allow {
            return priorityOf(authRuleProvider: providerRule1) < priorityOf(authRuleProvider: providerRule2)
        }
        return priorityOf(authStrategy: rule1.allow) < priorityOf(authStrategy: rule2.allow)
    }

    /// Returns the proper authorization type for the provided schema according to a set of priority rules
    /// - Parameters:
    ///   - schema: model schema
    ///   - operation: model operation
    /// - Returns: an iterator for the applicable auth rules
    public func authTypesFor(schema: ModelSchema,
                             operation: ModelOperation) async -> AWSAuthorizationTypeIterator {
        return await authTypesFor(schema: schema, operations: [operation])
    }

    /// Returns the union of authorization types for the provided schema for the given list of operations
    /// - Parameters:
    ///   - schema: model schema
    ///   - operations: model operations
    /// - Returns: an iterator for the applicable auth rules
    public func authTypesFor(schema: ModelSchema,
                             operations: [ModelOperation]) async -> AWSAuthorizationTypeIterator {
        var sortedRules = operations
            .flatMap { schema.authRules.filter(modelOperation: $0) }
            .reduce(into: [AuthRule](), { array, rule in
                if !array.contains(rule) {
                    array.append(rule)
                }
            })
            .sorted(by: AWSMultiAuthModeStrategy.comparator)

        // if there isn't a user signed in, returns only public or custom rules
        if let authDelegate = authDelegate, await !authDelegate.isUserLoggedIn() {
            sortedRules = sortedRules.filter { rule in
                return rule.allow == .public || rule.allow == .custom
            }
        }
        let applicableAuthTypes = sortedRules.map {
            AWSMultiAuthModeStrategy.authTypeFor(authRule: $0)
        }
        return AWSAuthorizationTypeIterator(withValues: applicableAuthTypes)
    }

}
