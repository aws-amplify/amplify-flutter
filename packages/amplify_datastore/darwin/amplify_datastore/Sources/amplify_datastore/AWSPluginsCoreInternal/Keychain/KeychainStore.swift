//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation
import Security

// swiftlint:disable identifier_name
public protocol KeychainStoreBehavior {

    @_spi(KeychainStore)
    /// Get a string value from the Keychain based on the key.
    /// This System Programming Interface (SPI) may have breaking changes in future updates.
    /// - Parameter key: A String key use to look up the value in the Keychain
    /// - Returns: A string value
    func _getString(_ key: String) throws -> String

    @_spi(KeychainStore)
    /// Get a data value from the Keychain based on the key.
    /// This System Programming Interface (SPI) may have breaking changes in future updates.
    /// - Parameter key: A String key use to look up the value in the Keychain
    /// - Returns: A data value
    func _getData(_ key: String) throws -> Data

    @_spi(KeychainStore)
    /// Set a key-value pair in the Keychain.
    /// This System Programming Interface (SPI) may have breaking changes in future updates.
    /// - Parameters:
    ///   - value: A string value to store in Keychain
    ///   - key: A String key for the value to store in the Keychain
    func _set(_ value: String, key: String) throws

    @_spi(KeychainStore)
    /// Set a key-value pair in the Keychain.
    /// This iSystem Programming Interface (SPI) may have breaking changes in future updates.
    /// - Parameters:
    ///   - value: A data value to store in Keychain
    ///   - key: A String key for the value to store in the Keychain
    func _set(_ value: Data, key: String) throws

    @_spi(KeychainStore)
    /// Remove key-value pair from Keychain based on the provided key.
    /// This System Programming Interface (SPI) may have breaking changes in future updates.
    /// - Parameter key: A String key to delete the key-value pair
    func _remove(_ key: String) throws

    @_spi(KeychainStore)
    /// Removes all key-value pair in the Keychain.
    /// This System Programming Interface (SPI) may have breaking changes in future updates.
    func _removeAll() throws
}

public struct KeychainStore: KeychainStoreBehavior {

    let attributes: KeychainStoreAttributes

    private init(attributes: KeychainStoreAttributes) {
        self.attributes = attributes
    }

    public init() {
        guard let bundleIdentifier = Bundle.main.bundleIdentifier else {
            fatalError("Unable to retrieve bundle identifier to initialize keychain")
        }
        self.init(service: bundleIdentifier)
    }

    public init(service: String) {
        self.init(service: service, accessGroup: nil)
    }

    public init(service: String, accessGroup: String? = nil) {
        var attributes = KeychainStoreAttributes(service: service)
        attributes.accessGroup = accessGroup
        self.init(attributes: attributes)
        log.verbose("[KeychainStore] Initialized keychain with service=\(service), attributes=\(attributes), accessGroup=\(accessGroup ?? "")")
    }

    @_spi(KeychainStore)
    /// Get a string value from the Keychain based on the key.
    /// This System Programming Interface (SPI) may have breaking changes in future updates.
    /// - Parameter key: A String key use to look up the value in the Keychain
    /// - Returns: A string value
    public func _getString(_ key: String) throws -> String {
        log.verbose("[KeychainStore] Started retrieving `String` from the store with key=\(key)")
        let data = try _getData(key)
        guard let string = String(data: data, encoding: .utf8) else {
            log.error("[KeychainStore] Unable to create String from Data retrieved")
            throw KeychainStoreError.conversionError("Unable to create String from Data retrieved")
        }
        log.verbose("[KeychainStore] Successfully retrieved string from the store")
        return string

    }

    @_spi(KeychainStore)
    /// Get a data value from the Keychain based on the key.
    /// This System Programming Interface (SPI) may have breaking changes in future updates.
    /// - Parameter key: A String key use to look up the value in the Keychain
    /// - Returns: A data value
    public func _getData(_ key: String) throws -> Data {
        log.verbose("[KeychainStore] Started retrieving `Data` from the store with key=\(key)")
        var query = attributes.defaultGetQuery()

        query[Constants.MatchLimit] = Constants.MatchLimitOne
        query[Constants.ReturnData] = kCFBooleanTrue

        query[Constants.AttributeAccount] = key

        var result: AnyObject?
        let status = SecItemCopyMatching(query as CFDictionary, &result)

        switch status {
        case errSecSuccess:
            guard let data = result as? Data else {
                log.error("[KeychainStore] The keychain item retrieved is not the correct type")
                throw KeychainStoreError.unknown("The keychain item retrieved is not the correct type")
            }
            log.verbose("[KeychainStore] Successfully retrieved `Data` from the store with key=\(key)")
            return data
        case errSecItemNotFound:
            log.verbose("[KeychainStore] No Keychain item found for key=\(key)")
            throw KeychainStoreError.itemNotFound
        default:
            log.error("[KeychainStore] Error of status=\(status) occurred when attempting to retrieve a Keychain item for key=\(key)")
            throw KeychainStoreError.securityError(status)
        }
    }

    @_spi(KeychainStore)
    /// Set a key-value pair in the Keychain.
    /// This System Programming Interface (SPI) may have breaking changes in future updates.
    /// - Parameters:
    ///   - value: A string value to store in Keychain
    ///   - key: A String key for the value to store in the Keychain
    public func _set(_ value: String, key: String) throws {
        log.verbose("[KeychainStore] Started setting `String` for key=\(key)")
        guard let data = value.data(using: .utf8, allowLossyConversion: false) else {
            log.error("[KeychainStore] Unable to create Data from String retrieved for key=\(key)")
            throw KeychainStoreError.conversionError("Unable to create Data from String retrieved")
        }
        try _set(data, key: key)
        log.verbose("[KeychainStore] Successfully added `String` for key=\(key)")
    }

    @_spi(KeychainStore)
    /// Set a key-value pair in the Keychain.
    /// This iSystem Programming Interface (SPI) may have breaking changes in future updates.
    /// - Parameters:
    ///   - value: A data value to store in Keychain
    ///   - key: A String key for the value to store in the Keychain
    public func _set(_ value: Data, key: String) throws {
        log.verbose("[KeychainStore] Started setting `Data` for key=\(key)")
        var getQuery = attributes.defaultGetQuery()
        getQuery[Constants.AttributeAccount] = key
        log.verbose("[KeychainStore] Initialized fetching to decide whether update or add")
        let fetchStatus = SecItemCopyMatching(getQuery as CFDictionary, nil)
        switch fetchStatus {
        case errSecSuccess:
            #if os(macOS)
            log.verbose("[KeychainStore] Deleting item on MacOS to add an item.")
            SecItemDelete(getQuery as CFDictionary)
            fallthrough
            #else
            log.verbose("[KeychainStore] Found existing item, updating")
            var attributesToUpdate = [String: Any]()
            attributesToUpdate[Constants.ValueData] = value

            let updateStatus = SecItemUpdate(getQuery as CFDictionary, attributesToUpdate as CFDictionary)
            if updateStatus != errSecSuccess {
                log.error("[KeychainStore] Error updating item to keychain with status=\(updateStatus)")
                throw KeychainStoreError.securityError(updateStatus)
            }
            log.verbose("[KeychainStore] Successfully updated `String` in keychain for key=\(key)")
            #endif
        case errSecItemNotFound:
            log.verbose("[KeychainStore] Unable to find an existing item, creating new item")
            var attributesToSet = attributes.defaultSetQuery()
            attributesToSet[Constants.AttributeAccount] = key
            attributesToSet[Constants.ValueData] = value

            let addStatus = SecItemAdd(attributesToSet as CFDictionary, nil)
            if addStatus != errSecSuccess {
                log.error("[KeychainStore] Error adding item to keychain with status=\(addStatus)")
                throw KeychainStoreError.securityError(addStatus)
            }
            log.verbose("[KeychainStore] Successfully added `String` in keychain for key=\(key)")
        default:
            log.error("[KeychainStore] Error occurred while retrieving data from keychain when deciding to update or add with status=\(fetchStatus)")
            throw KeychainStoreError.securityError(fetchStatus)
        }
    }

    @_spi(KeychainStore)
    /// Remove key-value pair from Keychain based on the provided key.
    /// This System Programming Interface (SPI) may have breaking changes in future updates.
    /// - Parameter key: A String key to delete the key-value pair
    public func _remove(_ key: String) throws {
        log.verbose("[KeychainStore] Starting to remove item from keychain with key=\(key)")
        var query = attributes.defaultGetQuery()
        query[Constants.AttributeAccount] = key

        let status = SecItemDelete(query as CFDictionary)
        if status != errSecSuccess && status != errSecItemNotFound {
            log.error("[KeychainStore] Error removing itms from keychain with status=\(status)")
            throw KeychainStoreError.securityError(status)
        }
        log.verbose("[KeychainStore] Successfully removed item from keychain")
    }

    @_spi(KeychainStore)
    /// Removes all key-value pair in the Keychain.
    /// This System Programming Interface (SPI) may have breaking changes in future updates.
    public func _removeAll() throws {
        log.verbose("[KeychainStore] Starting to remove all items from keychain")
        var query = attributes.defaultGetQuery()
#if !os(iOS) && !os(watchOS) && !os(tvOS)
        query[Constants.MatchLimit] = Constants.MatchLimitAll
#endif

        let status = SecItemDelete(query as CFDictionary)
        if status != errSecSuccess && status != errSecItemNotFound {
            log.error("[KeychainStore] Error removing all items from keychain with status=\(status)")
            throw KeychainStoreError.securityError(status)
        }
        log.verbose("[KeychainStore] Successfully removed all items from keychain")
    }

}

extension KeychainStore {
    struct Constants {
        /** Class Key Constant */
        static let Class = String(kSecClass)
        static let ClassGenericPassword = String(kSecClassGenericPassword)

        /** Attribute Key Constants */
        static let AttributeAccessGroup = String(kSecAttrAccessGroup)
        static let AttributeAccount = String(kSecAttrAccount)
        static let AttributeService = String(kSecAttrService)
        static let AttributeGeneric = String(kSecAttrGeneric)
        static let AttributeLabel = String(kSecAttrLabel)
        static let AttributeComment = String(kSecAttrComment)
        static let AttributeAccessible = String(kSecAttrAccessible)

        /** Attribute Accessible Constants */
        static let AttributeAccessibleAfterFirstUnlockThisDeviceOnly = String(kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly)

        /** Search Constants */
        static let MatchLimit = String(kSecMatchLimit)
        static let MatchLimitOne = kSecMatchLimitOne
        static let MatchLimitAll = kSecMatchLimitAll

        /** Return Type Key Constants */
        static let ReturnData = String(kSecReturnData)
        static let ReturnAttributes = String(kSecReturnAttributes)

        /** Value Type Key Constants */
        static let ValueData = String(kSecValueData)

        /** Indicates whether to treat macOS keychain items like iOS keychain items without setting kSecAttrSynchronizable */
        static let UseDataProtectionKeyChain = String(kSecUseDataProtectionKeychain)
    }
}
// swiftlint:enable identifier_name

extension KeychainStore: DefaultLogger {
    public static var log: Logger {
        Amplify.Logging.logger(forNamespace: String(describing: self))
    }

    public nonisolated var log: Logger { Self.log }
}
