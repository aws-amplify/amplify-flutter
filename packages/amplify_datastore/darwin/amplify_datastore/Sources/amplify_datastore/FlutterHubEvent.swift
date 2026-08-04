// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import Foundation

protocol FlutterHubEvent {
    var eventName: String { get set }
    func toValueMap() -> [String: Any]
}

func shortEventName(eventName: String) -> String {
    return eventName.replacingOccurrences(of: "DataStore.", with: "")
}
