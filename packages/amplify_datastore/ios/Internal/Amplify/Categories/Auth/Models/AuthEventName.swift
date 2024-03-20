//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

public extension HubPayload.EventName.Auth {

    /// eventName emitted when a user is successfully signedIn to Auth category
    static let signedIn = "Auth.signedIn"

    /// eventName emitted when a user is signedOut from Auth category
    static let signedOut = "Auth.signedOut"

    /// eventName emitted when a user is deleted from Auth category
    static let userDeleted = "Auth.userDeleted"

    /// eventName emitted when the current session has expired
    static let sessionExpired = "Auth.sessionExpired"
}
