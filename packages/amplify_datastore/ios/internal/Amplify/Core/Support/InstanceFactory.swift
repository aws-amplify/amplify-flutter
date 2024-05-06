//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

protocol InstanceFactory {
    func get<T>(type: T.Type, message: @autoclosure () -> String) throws -> T
}
