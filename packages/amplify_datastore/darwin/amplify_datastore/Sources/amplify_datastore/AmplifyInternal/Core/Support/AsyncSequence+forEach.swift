//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

public extension AsyncSequence {

    /// Iterates over each element of an AsyncSequence
    /// - Parameter block: block to run with element
    func forEach(_ block: (Element) async throws -> Void) async rethrows {
        for try await element in self {
          try await block(element)
        }
      }

}
