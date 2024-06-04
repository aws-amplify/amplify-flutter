//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

extension Predictions.Identify {
    public enum Labels {}
}

extension Predictions.Identify.Request where Output == Predictions.Identify.Labels.Result {
    public static func labels(type: Predictions.LabelType = .labels) -> Self {
        .init(kind: .detectLabels(type, .lift))
    }
}
