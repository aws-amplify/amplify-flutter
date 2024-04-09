//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Basic analytics event
public struct BasicAnalyticsEvent: AnalyticsEvent {

    /// The name of the event
    public var name: String

    /// Properties of the event
    public var properties: AnalyticsProperties?

    /// Initializer
    /// - Parameters:
    ///   - name: The name of the event
    ///   - properties: Properties of the event
    public init(name: String,
                properties: AnalyticsProperties? = nil) {
        self.name = name
        self.properties = properties
    }
}
