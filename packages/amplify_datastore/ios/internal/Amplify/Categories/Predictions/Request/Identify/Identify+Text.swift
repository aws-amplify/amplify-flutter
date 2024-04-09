//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

extension Predictions.Identify {
    public enum Text {}
}

extension Predictions.Identify.Request where Output == Predictions.Identify.Text.Result {
    public static let text = Self(
        kind: .detectText(.lift)
    )
}
