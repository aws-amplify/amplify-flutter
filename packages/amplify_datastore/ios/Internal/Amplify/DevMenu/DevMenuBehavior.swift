//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

#if os(iOS)
import Foundation

/// A protocol describing the behaviors of a Developer Menu
public protocol DevMenuBehavior {
    /// Display the menu
    func showMenu()
}
#endif
