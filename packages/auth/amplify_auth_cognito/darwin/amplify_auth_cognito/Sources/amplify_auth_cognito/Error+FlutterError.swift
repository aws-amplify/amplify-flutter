// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import Foundation
#if os(iOS)
import Flutter
#else
import FlutterMacOS
#endif

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
