//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import CoreGraphics

/// protocol describing identified text in an image
public protocol IdentifiedText {
    var text: String { get }
    var boundingBox: CGRect { get }
    var polygon: Predictions.Polygon? { get }
    var page: Int? { get }
}
