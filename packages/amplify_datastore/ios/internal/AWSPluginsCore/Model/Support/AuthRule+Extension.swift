//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Amplify

extension AuthRuleProvider {

    /// Returns corresponding `AWSAuthorizationType` for each `AuthRuleProvider`
    /// - Returns: AWS authorization type
    public func toAWSAuthorizationType() -> AWSAuthorizationType {
        var authType: AWSAuthorizationType
        switch self {
        case .apiKey:
            authType = .apiKey
        case .oidc:
            authType = .openIDConnect
        case .iam:
            authType = .awsIAM
        case .userPools:
            authType = .amazonCognitoUserPools
        case .function:
            authType = .function
        }
        return authType
    }
}

extension AuthRule {
    func getOwnerFieldOrDefault() -> String {
        guard let ownerField = ownerField else {
            return "owner"
        }
        return ownerField
    }

    func isReadRestrictingStaticGroup() -> Bool {
        return allow == .groups &&
            !groups.isEmpty &&
            getModelOperationsOrDefault().contains(.read)
    }

    func isReadRestrictingOwner() -> Bool {
        return allow == .owner &&
            getModelOperationsOrDefault().contains(.read)
    }

    func getModelOperationsOrDefault() -> [ModelOperation] {
        return operations.isEmpty ? [.create, .update, .delete, .read] : operations
    }

    public func identityClaimOrDefault() -> String {
        guard let identityClaim = self.identityClaim else {
            return "username"
        }
        if identityClaim == "cognito:username" {
            return "username"
        }
        return identityClaim
    }
}

extension Array where Element == AuthRule {

    // This function returns a map of all of the read restricting static groups defined for your app's schema
    // Example 1: Single group with implicit read restriction
    // {allow: groups, groups: ["Admins"]}
    // Returns:
    // {
    //     "cognito:groups" : ["Admins"]
    // }
    //
    // Example 2: Multiple groups with only one having read restriction
    // {allow: groups, groups: ["Admins"], operations: [read, update, delete], groupClaim: "https://app1.com/claims/groups"}
    // {allow: groups, groups: ["Users"], operations: [create]}
    // Returns:
    // {
    //     "https://app1.com/claims/groups" : ["Admins"]
    // }
    //
    // Example 3: Multiple groups with multiple group claims
    // {allow: groups, provider: oidc, groups: ["Admins"], groupClaim: "https://app1.com/claims/groups"}
    // {allow: groups, provider: oidc, groups: ["Moderators", "Editors"], groupClaim: "https://app2.com/claims/groups"}
    // Returns:
    // {
    //     "https://app1.com/claims/groups" : ["Admins"],
    //     "https://app2.com/claims/groups" : ["Moderators", "Editors"]
    // }
    //
    func groupClaimsToReadRestrictingStaticGroups() -> [String: Set<String>] {
        var readRestrictingStaticGroupsMap = [String: Set<String>]()
        let readRestrictingGroupRules = filter { $0.isReadRestrictingStaticGroup() }
        for groupRule in readRestrictingGroupRules {
            let groupClaim = groupRule.groupClaim ?? "cognito:groups"
            groupRule.groups.forEach { group in
                if var existingSet = readRestrictingStaticGroupsMap[groupClaim] {
                    existingSet.insert(group)
                    readRestrictingStaticGroupsMap[groupClaim] = existingSet
                } else {
                    readRestrictingStaticGroupsMap[groupClaim] = [group]
                }
            }
        }
        return readRestrictingStaticGroupsMap
    }

    func readRestrictingOwnerRules() -> [AuthRule] {
        return filter { $0.isReadRestrictingOwner() }
    }
}
