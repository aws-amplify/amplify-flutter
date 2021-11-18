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

// swiftlint:disable identifier_name type_name

/// Thread-safe wrapper for [FlutterResult]. Prevents multiple replies and automically posts results to the main thread.
public func AtomicResult(_ result: @escaping FlutterResult, _ methodName: String) -> FlutterResult {
    return atomicResult(result, methodName).send
}

private class atomicResult {
    let result: FlutterResult

    /// The method call which initiated this result.
    let methodName: String

    /// Whether a reply has already been sent.
    var isSent = false

    init(_ result: @escaping FlutterResult, _ methodName: String) {
        self.result = result
        self.methodName = methodName
    }

    func send(_ value: Any?) {
        DispatchQueue.main.async { [self] in
            guard !isSent else {
                NSLog("AtomicResult(%@): Attempted to send value after initial reply", methodName)
                return
            }
            result(value)
            isSent = true
        }
    }
}
