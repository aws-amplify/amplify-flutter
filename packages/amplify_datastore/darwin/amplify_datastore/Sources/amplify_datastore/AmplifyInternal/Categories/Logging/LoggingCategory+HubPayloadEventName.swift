//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

public extension HubPayload.EventName {
    /// Logging hub events
    struct Logging { }
}

public extension HubPayload.EventName.Logging {
    static let writeLogFailure = "Logging.writeLogFailure"
    static let flushLogFailure = "Logging.flushLogFailure"
}
