//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

extension Predictions.Identify {
    public enum Celebrities {}
}

extension Predictions.Identify.Request where Output == Predictions.Identify.Celebrities.Result {
    public static let celebrities = Self(
        kind: .detectCelebrities(.lift)
    )
}
