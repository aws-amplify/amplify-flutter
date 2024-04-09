//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Device used by the user to sign in
public protocol AuthDevice {

    /// Device id
    var id: String { get }

    /// Device name
    var name: String { get }
}
