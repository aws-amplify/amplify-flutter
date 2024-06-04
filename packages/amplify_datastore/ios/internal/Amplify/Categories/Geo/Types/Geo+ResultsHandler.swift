//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

public extension Geo {
    /// Results handler for Amplify Geo.
    typealias ResultsHandler<T> = (Result<T, Error>) -> Void
}
