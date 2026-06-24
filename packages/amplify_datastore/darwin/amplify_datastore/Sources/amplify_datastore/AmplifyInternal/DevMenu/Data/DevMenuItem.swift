//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

#if os(iOS)
import Foundation

/// Data class for a row shown in the Developer Menu
struct DevMenuItem: Identifiable {
    let id = UUID()
    let type: DevMenuItemType

    init(type: DevMenuItemType) {
        self.type = type
    }
}
#endif
