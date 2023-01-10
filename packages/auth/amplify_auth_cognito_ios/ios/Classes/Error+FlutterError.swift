// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import Foundation
import Flutter

extension Error {
    /// This error as a `FlutterError`.
    var flutterError: FlutterError {
        let hostedUIError = self as? HostedUIError ?? HostedUIError.unknown(localizedDescription)
        return FlutterError(
            code: hostedUIError.code,
            message: hostedUIError.message,
            details: nil)
    }
}
