//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

#if os(iOS)
import Foundation
import UIKit

/// A protocol which provides a UI context over which views can be presented
public protocol DevMenuPresentationContextProvider: AnyObject {
    func devMenuPresentationContext() -> UIWindow
}
#endif
