//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

extension TemporalSpec where Self: Hashable {
    func hash(into hasher: inout Hasher) {
        hasher.combine(foundationDate)
    }
}
