//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

#if canImport(Combine)
import Foundation
import Combine

extension AmplifyInProcessReportingOperation {
    /// A Publisher that emits in-process values for an operation, or the associated
    /// failure. Cancelled operations will emit a completion without a value as long as
    /// the cancellation was received before the operation was resolved.
    ///
    /// Note that the `inProcessPublisher`'s `Failure` type is `Never`. An
    /// AmplifyOperation reports its overall success or failure on the
    /// `resultPublisher`. The `inProcessPublisher` reports a stream of values
    /// associated with the ongoing work of the AmplifyOperation. For example, a
    /// `StorageUploadFileOperation` uses the `inProcessOperation` to report the
    /// `Progress` of the file's upload.
    var internalInProcessPublisher: AnyPublisher<InProcess, Never> {
        inProcessSubject.eraseToAnyPublisher()
    }

    /// Publish an in-process value for the operation
    ///
    /// - Parameter result: the result of the operation
    func publish(inProcessValue: InProcess) {
        inProcessSubject.send(inProcessValue)
    }

    /// Publish a completion to the in-process publisher
    ///
    /// - Parameter result: the result of the operation
    func publish(completion: Subscribers.Completion<Never>) {
        inProcessSubject.send(completion: completion)
    }

}
#endif
