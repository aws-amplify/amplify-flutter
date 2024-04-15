//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

#if canImport(Combine)
import Foundation
import Combine

public extension AmplifyOperation {
    /// Publishes the final result of the operation
    var resultPublisher: AnyPublisher<Success, Failure> {
        internalResultPublisher
    }
}

public extension AmplifyInProcessReportingOperation {
    /// Publishes in-process updates
    var inProcessPublisher: AnyPublisher<InProcess, Never> {
        internalInProcessPublisher
    }
}

#endif
