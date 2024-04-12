//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Analytics category properties
public typealias AnalyticsProperties = [String: AnalyticsPropertyValue]

/// Behavior of the Analytics category that clients will use
public protocol AnalyticsCategoryBehavior {

    /// Allows you to tie a user to their actions and record traits about them. It includes
    /// an unique User ID and any optional traits you know about them like their email, name, etc.
    ///
    /// - Parameter userId: The unique identifier for the user
    /// - Parameter userProfile: User specific data (e.g. plan, accountType, email, age, location, etc)
    func identifyUser(userId: String, userProfile: AnalyticsUserProfile?)

    /// Record the actions your users perform. Every action triggers what we call an “event”,
    /// which can also have associated properties.
    ///
    /// - Parameter event: the event data. The way it is recorded depends on the service being used.
    func record(event: AnalyticsEvent)

    /// Utility to create an event from a string.
    ///
    /// - Parameter eventName: The name of the event.
    func record(eventWithName eventName: String)

    /// Register properties that will be recorded by all the subsequent `recordEvent` call.
    /// Properties registered here can be overridden by the ones with the same
    /// name when calling `record`. Examples of global properties would be `selectedPlan`, `campaignSource`
    ///
    /// - Parameter properties: The dictionary of property name to property values
    func registerGlobalProperties(_ properties: AnalyticsProperties)

    /// Registered global properties can be unregistered though this method. In case no keys are provided, *all*
    /// registered global properties will be unregistered.
    ///
    /// - Parameter keys: a set of property names to unregister
    func unregisterGlobalProperties(_ keys: Set<String>?)

    /// Attempts to submit the locally stored events to the underlying service. Implementations do not guarantee that
    /// all the stored data will be sent in one request. Some analytics services have hard limits on how much data
    /// you can send at once.
    func flushEvents()

    /// Enable the analytics data collection. Useful to implement flows that require users to *opt-in*.
    func enable()

    /// Disable the analytics data collection. Useful to implement flows that allow users to *opt-out*.
    ///
    /// Some countries (e.g. countries in the EU) and/or audience (e.g. children) have specific rules
    /// regarding user data collection, therefore implementation of this category must always offer the
    /// possibility of disabling the data collection.
    func disable()
}
