//
//  AtomicResult.swift
//  amplify_auth_cognito
//
//  Created by Nys, Dillon on 7/15/21.
//

import Foundation

/// Thread-safe wrapper for [FlutterResult]. Prevents multiple replies and automically posts results to the main thread.
func AtomicResult(_ result: @escaping FlutterResult) -> FlutterResult {
    return atomicResult(result).send
}

private class atomicResult {
    let result: FlutterResult
    
    /// Whether a reply has already been sent.
    var isSent = false
    
    init(_ result: @escaping FlutterResult) {
        self.result = result
    }
    
    func send(_ value: Any?) {
        DispatchQueue.main.async { [self] in
            guard !isSent else { return }
            result(value)
            isSent = true
        }
    }
}
