/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

import amplify_flutter_ios

public class GraphQLSubscriptionsStreamHandler: NSObject, FlutterStreamHandler {
    private var eventSink: FlutterEventSink?

    public func onListen(withArguments arguments: Any?, eventSink events: @escaping FlutterEventSink) -> FlutterError? {
        eventSink = events
        return nil
    }

    func sendEvent(payload: [String: Any?]?, id: String, type: GraphQLSubscriptionEventTypes) {
        var result: [String: Any?] = [
            "id": id,
            "type": type.rawValue
        ]
        if type == GraphQLSubscriptionEventTypes.DATA {
            result["payload"] = payload
        }
        eventSink?(result)
    }

    func sendError(errorCode: String, id: String, details: [String: Any]) {
        let flutterError = FlutterError(
            code: errorCode,
            message: id,
            details: details)
        eventSink?(flutterError)
    }

    public func onCancel(withArguments arguments: Any?) -> FlutterError? {
        eventSink = nil
        return nil
    }
}
