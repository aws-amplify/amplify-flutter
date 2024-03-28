//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

extension Notifications.Push {
    #if canImport(UIKit)
        /// A dictionary that contains information related to the remote notification
        public typealias UserInfo = [AnyHashable: Any]
    #elseif canImport(AppKit)
        /// A dictionary that contains information related to the remote notification
        public typealias UserInfo = [String: Any]
    #endif
}
