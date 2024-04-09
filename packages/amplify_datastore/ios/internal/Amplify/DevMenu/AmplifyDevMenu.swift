//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

#if os(iOS)
import Foundation
import SwiftUI
import UIKit

/// Presents a developer menu using the provided `DevMenuPresentationContextProvider`
/// upon notification from a `TriggerRecognizer`. Default recognizer is a `LongPressGestureRecognizer`
public final class AmplifyDevMenu: DevMenuBehavior, TriggerDelegate {

    weak var devMenuPresentationContextProvider: DevMenuPresentationContextProvider?
    var triggerRecognizer: TriggerRecognizer?

    init(devMenuPresentationContextProvider: DevMenuPresentationContextProvider) {
        self.devMenuPresentationContextProvider = devMenuPresentationContextProvider
        self.triggerRecognizer = LongPressGestureRecognizer(
            uiWindow: devMenuPresentationContextProvider.devMenuPresentationContext())
        triggerRecognizer?.updateTriggerDelegate(delegate: self)
    }

    public func onTrigger(triggerRecognizer: TriggerRecognizer) {
        showMenu()
    }

    public func showMenu() {
        guard let rootViewController =
            devMenuPresentationContextProvider?.devMenuPresentationContext().rootViewController else {
                Amplify.Logging.warn(DevMenuStringConstants.logTag +
                    "RootViewController of the UIWindow is nil")
                return
        }
        let viewController = UIHostingController(rootView: DevMenuList())
        rootViewController.present(viewController, animated: true)
    }
}
#endif
