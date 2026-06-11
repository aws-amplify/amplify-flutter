//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

/// - Warning: Although this has `public` access, it is intended for internal use and should not be used directly
///   by host applications. The behavior of this may change without warning.
public enum AuthStrategy {
    case owner
    case groups
    case `private`
    case `public`
    case custom
}

/// - Warning: Although this has `public` access, it is intended for internal use and should not be used directly
///   by host applications. The behavior of this may change without warning.
public enum ModelOperation {
    case create
    case update
    case delete
    case read
}

/// - Warning: Although this has `public` access, it is intended for internal use and should not be used directly
///   by host applications. The behavior of this may change without warning.
public enum AuthRuleProvider {
    case apiKey
    case oidc
    case iam
    case userPools
    case function
}

/// - Warning: Although this has `public` access, it is intended for internal use and should not be used directly
///   by host applications. The behavior of this may change without warning.
public typealias AuthRules = [AuthRule]

/// - Warning: Although this has `public` access, it is intended for internal use and should not be used directly
///   by host applications. The behavior of this may change without warning.
public struct AuthRule {
    public let allow: AuthStrategy
    public let ownerField: String?
    public let identityClaim: String?
    public let groupClaim: String?
    public let groups: [String]
    public let groupsField: String?
    public let operations: [ModelOperation]
    public let provider: AuthRuleProvider?

    public init(allow: AuthStrategy,
                ownerField: String? = nil,
                identityClaim: String? = nil,
                groupClaim: String? = nil,
                groups: [String] = [],
                groupsField: String? = nil,
                provider: AuthRuleProvider? = nil,
                operations: [ModelOperation] = []) {
        self.allow = allow
        self.ownerField = ownerField
        self.identityClaim = identityClaim
        self.groupClaim = groupClaim
        self.groups = groups
        self.groupsField = groupsField
        self.provider = provider
        self.operations = operations
    }
}

extension AuthRule: Hashable {

}
