/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

import Foundation
import Amplify

public enum OperationsManager {
    /// Prevents concurrent access to arrays.
    private static let queue = DispatchQueue(label: "com.amazonaws.flutter.OperationsManager.concurrency")

    /// Maps `cancelToken` to [Operation].
    private static var operationsMap: [String: Operation] = [:]

    /// Maps [URLSessionTaskBehavior.taskBehaviorIdentifier] to [RESTOperation.id].
    private static var operationIdsByTaskId: [Int: UUID] = [:]

    /// Maps [RESTOperation.id] to [URLResponse].
    private static var operationsResponseMap: [UUID: HTTPURLResponse] = [:]

    public static func containsOperation(cancelToken: String) -> Bool {
        queue.sync {
            return operationsMap[cancelToken] != nil
        }
    }

    public static func addOperation(cancelToken: String, operation: Operation) {
        queue.sync {
            operationsMap[cancelToken] = operation
        }
    }

    public static func removeOperation(cancelToken: String) {
        queue.sync {
            guard let operation = operationsMap[cancelToken] else {
                return
            }
            operationsMap.removeValue(forKey: cancelToken)
            if let restOperation = operation as? RESTOperation {
                operationsResponseMap.removeValue(forKey: restOperation.id)
            }
        }
    }

    public static func setTaskId(for cancelToken: String, taskId: Int) {
        queue.sync {
            guard let operation = operationsMap[cancelToken] as? RESTOperation else {
                return
            }
            operationIdsByTaskId[taskId] = operation.id
        }
    }

    public static func updateProgress(for taskId: Int, urlResponse: HTTPURLResponse) {
        queue.sync {
            guard let operationId = operationIdsByTaskId[taskId] else {
                return
            }
            operationsResponseMap[operationId] = urlResponse
        }
    }

    public static func getResponse(for cancelToken: String) -> HTTPURLResponse? {
        queue.sync {
            guard let operation = operationsMap[cancelToken] as? RESTOperation else {
                return nil
            }
            return operationsResponseMap[operation.id]
        }
    }

    public static func cancelOperation(cancelToken: String) {
        queue.sync {
            operationsMap[cancelToken]?.cancel()
        }
        removeOperation(cancelToken: cancelToken)
    }
}
