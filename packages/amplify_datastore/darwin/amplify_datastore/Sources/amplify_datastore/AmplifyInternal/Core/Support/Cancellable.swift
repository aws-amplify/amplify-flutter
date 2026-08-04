//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation
import _Concurrency

/// The conforming type supports cancelling an in-process operation. The exact semantics of "canceling" are not defined
/// in the protocol. Specifically, there is no guarantee that a `cancel` results in immediate cessation of activity.
public protocol Cancellable {
    func cancel()
}

/// Unique name for Cancellable which handles a name conflict with the Combine framework.
public typealias AmplifyCancellable = Cancellable

extension _Concurrency.Task: AmplifyCancellable {}
