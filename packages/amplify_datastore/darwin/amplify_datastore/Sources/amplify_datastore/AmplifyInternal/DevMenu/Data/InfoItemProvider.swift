//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

#if os(iOS)
import Foundation

/// Implement this protocol to display information for each row in Device / Environment Information screen
protocol InfoItemProvider {
    var displayName: String { get }
    var information: String { get }
}
#endif
