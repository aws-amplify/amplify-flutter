// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0


import XCTest
import Combine
@testable import amplify_datastore

class PublisherExtensionTests: XCTestCase {
    func testToAmplifyAsyncThrowingSequence_createAsyncSequenceCorrect() async throws {
        let subject = PassthroughSubject<Int, TestError>()
        let (sequence, cancellable) = subject.eraseToAnyPublisher().toAmplifyAsyncThrowingSequence()

        let expectation1 = expectation(description: "element 1 received")
        let expectation2 = expectation(description: "element 2 received")
        let expectation3 = expectation(description: "element 3 received")
        Task {
            for try await element in sequence {
                switch element {
                case 1: expectation1.fulfill()
                case 2: expectation2.fulfill()
                case 3: expectation3.fulfill()
                default: break
                }
            }
        }

        Task {
            subject.send(1)
            subject.send(2)
            subject.send(3)
            subject.send(completion: .finished)
        }

        await fulfillment(of: [expectation1, expectation2, expectation3], timeout: 1)
    }

    func testToAmplifyAsyncThrowingSequence_withThrowingError_createAsyncSequenceCorrect() async throws {
        let subject = PassthroughSubject<Int, TestError>()
        let (sequence, cancellable) = subject.eraseToAnyPublisher().toAmplifyAsyncThrowingSequence()

        let expectation1 = expectation(description: "element 1 received")
        let expectation2 = expectation(description: "element 2 received")
        let expectation3 = expectation(description: "element 3 received")
        expectation3.isInverted = true
        Task {
            do {
                for try await element in sequence {
                    switch element {
                    case 1: expectation1.fulfill()
                    case 2: expectation2.fulfill()
                    case 3: expectation3.fulfill()
                    default: break
                    }
                }
            } catch {
                XCTAssertTrue(error is TestError)
            }
        }

        subject.send(1)
        subject.send(2)
        subject.send(completion: .failure(.error))
        await fulfillment(of: [expectation1, expectation2, expectation3], timeout: 1)
    }

    func testToAmplifyAsyncThrowingSequence_withCancelling_createAsyncSequenceCorrect() async throws {
        let subject = PassthroughSubject<Int, TestError>()
        let (sequence, cancellable) = subject.eraseToAnyPublisher().toAmplifyAsyncThrowingSequence()

        let expectation1 = expectation(description: "element 1 received")
        let expectation2 = expectation(description: "element 2 received")
        let expectation3 = expectation(description: "element 3 received")
        expectation3.isInverted = true
        let expectation4 = expectation(description: "element 4 received")
        expectation4.isInverted = true
        Task {
            for try await element in sequence {
                switch element {
                case 1: expectation1.fulfill()
                case 2: expectation2.fulfill()
                case 3: expectation3.fulfill()
                case 4: expectation4.fulfill()
                default: break
                }
            }
        }

        subject.send(1)
        subject.send(2)
        cancellable.cancel()
        subject.send(3)
        subject.send(4)
        await fulfillment(of: [
            expectation1,
            expectation2,
            expectation3,
            expectation4
        ], timeout: 1)
    }
}

fileprivate enum TestError: Error {
    case error
}
