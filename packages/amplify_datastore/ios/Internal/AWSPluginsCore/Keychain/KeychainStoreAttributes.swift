//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

struct KeychainStoreAttributes {

    var itemClass: String = KeychainStore.Constants.ClassGenericPassword
    var service: String
    var accessGroup: String?

}

extension KeychainStoreAttributes {

    func defaultGetQuery() -> [String: Any] {
        var query: [String: Any] = [
            KeychainStore.Constants.Class: itemClass,
            KeychainStore.Constants.AttributeService: service,
            KeychainStore.Constants.UseDataProtectionKeyChain: kCFBooleanTrue
        ]

        if let accessGroup = accessGroup {
            query[KeychainStore.Constants.AttributeAccessGroup] = accessGroup
        }
        return query
    }

    func defaultSetQuery() -> [String: Any] {
        var query: [String: Any] = defaultGetQuery()
        query[KeychainStore.Constants.AttributeAccessible] = KeychainStore.Constants.AttributeAccessibleAfterFirstUnlockThisDeviceOnly
        query[KeychainStore.Constants.UseDataProtectionKeyChain] = kCFBooleanTrue
        return query
    }
}
