// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import Foundation

public class DataStoreObserveEventStreamHandler: NSObject, FlutterStreamHandler {
    private var eventSink: FlutterEventSink?

    public func onListen(withArguments arguments: Any?, eventSink events: @escaping FlutterEventSink) -> FlutterError? {
        eventSink = events
        return nil
    }

    func sendEvent(flutterEvent: [String: Any]) {
        eventSink?(flutterEvent)
    }

    func sendError(flutterError: FlutterError) {
        eventSink?(flutterError)
    }

    public func onCancel(withArguments arguments: Any?) -> FlutterError? {
        eventSink = nil
        return nil
    }
}
