//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

extension Predictions.Identify {
    public enum Entities {}
}

extension Predictions.Identify.Request where Output == Predictions.Identify.Entities.Result {
    public static let entities = Self(
        kind: .detectEntities(.lift)
    )
}
