//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Amplify
import Foundation

final class CancelAwareBlockOperation: Operation {
    private let block: BasicClosure
    init(block: @escaping BasicClosure) {
        self.block = block
    }

    override func main() {
        guard !isCancelled else {
            return
        }
        block()
    }
}
