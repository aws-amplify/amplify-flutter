//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

extension AnalyticsCategory: AnalyticsCategoryBehavior {
    public func identifyUser(userId: String, userProfile: AnalyticsUserProfile? = nil) {
        plugin.identifyUser(userId: userId, userProfile: userProfile)
    }

    public func record(event: AnalyticsEvent) {
        plugin.record(event: event)
    }

    public func record(eventWithName eventName: String) {
        plugin.record(eventWithName: eventName)
    }

    public func registerGlobalProperties(_ properties: AnalyticsProperties) {
        plugin.registerGlobalProperties(properties)
    }

    public func unregisterGlobalProperties(_ keys: Set<String>? = nil) {
        plugin.unregisterGlobalProperties(keys)
    }

    public func flushEvents() {
        plugin.flushEvents()
    }

    public func enable() {
        plugin.enable()
    }

    public func disable() {
        plugin.disable()
    }
}

/// Methods that wrap `AnalyticsCategoryBehavior` to provides additional useful calling patterns
extension AnalyticsCategory {

    /// Registered global properties can be unregistered though this method. In case no keys are provided, *all*
    /// registered global properties will be unregistered. Duplicate keys will be ignored. This method can be called
    /// from `Amplify.Analytics` and is a wrapper for `unregisterGlobalProperties(_ keys: Set<String>? = nil)`
    ///
    /// - Parameter keys: one or more of property names to unregister
    public func unregisterGlobalProperties(_ keys: String...) {
        plugin.unregisterGlobalProperties(keys.isEmpty ? nil : Set<String>(keys))
    }

    /// Registered global properties can be unregistered though this method. In case no keys are provided, *all*
    /// registered global properties will be unregistered. Duplicate keys will be ignored. This method can be called
    /// from `Amplify.Analytics` and is a wrapper for `unregisterGlobalProperties(_ keys: Set<String>? = nil)`
    ///
    /// - Parameter keys: an array of property names to unregister
    public func unregisterGlobalProperties(_ keys: [String]) {
        plugin.unregisterGlobalProperties(keys.isEmpty ? nil : Set(keys))
    }
}
