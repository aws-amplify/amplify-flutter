//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

enum KeychainStatus {
    case success
    case userCanceled
    case duplicateItem
    case itemNotFound
    case missingEntitlement
    case unexpectedError(OSStatus)
}

extension KeychainStatus: CustomStringConvertible {

    init(status: OSStatus) {
        switch status {
        case 0:
            self = .success
        case -128:
            self = .userCanceled
        case -25299:
            self = .duplicateItem
        case -25300:
            self = .itemNotFound
        case -34018:
            self = .missingEntitlement
        default:
            self = .unexpectedError(status)
        }
    }

    var description: String {
        switch self {
        case .success:
            return "No error."
        case .userCanceled:
            return "User canceled the operation."
        case .duplicateItem:
            return "The specified item already exists in the keychain."
        case .itemNotFound:
            return "The specified item could not be found in the keychain."
        case .missingEntitlement:
            return """
            Internal error when a required entitlement isn't present,
            client has neither application-identifier nor keychain-access-groups entitlements.
            """
        case .unexpectedError(let status):
            return "Unexpected error has occurred with status: \(status)."
        }
    }
}
