//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

#if os(iOS)
import Foundation
import UIKit

/// A class for recognizing long press gesture which notifies a `TriggerDelegate` of the event
class LongPressGestureRecognizer: NSObject, TriggerRecognizer, UIGestureRecognizerDelegate {

    weak var triggerDelegate: TriggerDelegate?
    weak var uiWindow: UIWindow?
    let recognizer: UILongPressGestureRecognizer

    init(uiWindow: UIWindow) {
        self.uiWindow = uiWindow
        self.recognizer = UILongPressGestureRecognizer(target: nil, action: nil)
        self.triggerDelegate = nil
        super.init()
        registerLongPressRecognizer()
    }

    public func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer,
                                  shouldRecognizeSimultaneouslyWith otherGestureRecognizer: UIGestureRecognizer)
        -> Bool {
        return true
    }

    @objc private func longPressed(sender: UILongPressGestureRecognizer) {
        if sender.state == .ended {
            triggerDelegate?.onTrigger(triggerRecognizer: self)
        }
    }

    func updateTriggerDelegate(delegate: TriggerDelegate) {
        triggerDelegate = delegate
    }

    /// Register a `UILongPressGestureRecognizer` to `uiWindow`
    /// to listen to long press events
    private func registerLongPressRecognizer() {
        recognizer.addTarget(self, action: #selector(longPressed(sender:)))
        uiWindow?.addGestureRecognizer(recognizer)
        recognizer.delegate = self
    }

    deinit {
        if let window = uiWindow {
            window.removeGestureRecognizer(recognizer)
        }
        uiWindow = nil
        triggerDelegate = nil
    }
}
#endif
