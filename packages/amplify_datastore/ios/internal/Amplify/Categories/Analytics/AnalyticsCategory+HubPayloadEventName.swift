//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

public extension HubPayload.EventName {
    /// Analytics hub events
    struct Analytics { }
}

public extension HubPayload.EventName.Analytics {
    /// identifyUser event
    static let identifyUser = "Analytics.identifyUser"
    /// record event
    static let record = "Analytics.record"
    /// flushEvents event
    static let flushEvents = "Analytics.flushEvents"
}
