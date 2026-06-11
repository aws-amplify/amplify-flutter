//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

/// The conforming type supports pausing and resuming of an in-process operation. The exact semantics of "pausing" and
/// "resuming" are not defined in the protocol. Specifically, there is no guarantee that a `pause` results in an
/// immediate suspention of activity, and no guarantee that `resume` will result in an immediate resumption of activity.
public protocol Resumable {
    func pause()
    func resume()
}
