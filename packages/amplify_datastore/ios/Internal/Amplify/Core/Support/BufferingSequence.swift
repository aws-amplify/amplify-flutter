//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

public protocol BufferingSequence {
    associatedtype Element
    var bufferingPolicy: AsyncStream<Element>.Continuation.BufferingPolicy { get }
}

public extension BufferingSequence {
    var bufferingPolicy: AsyncStream<Element>.Continuation.BufferingPolicy {
        .unbounded
    }
}

public extension BufferingSequence where Element == Progress {
    var bufferingPolicy: AsyncStream<Element>.Continuation.BufferingPolicy {
        .bufferingNewest(5)
    }
}
