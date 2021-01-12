/*
 * Copyright 2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

import Foundation
import Amplify
import AmplifyPlugins

public class AuthCognitoHubEventStreamHandler: NSObject, FlutterStreamHandler {

    private var eventSink: FlutterEventSink?
    private var token: UnsubscribeToken?

    public func onListen(withArguments arguments: Any?, eventSink events: @escaping FlutterEventSink) -> FlutterError? {
        self.eventSink = events
        setHubListener()
        return nil
    }
    
    func setHubListener() {
        self.token = Amplify.Hub.listen(to: .auth) { (payload) in
            switch payload.eventName {
            case HubPayload.EventName.Auth.signedIn:
                let hubEvent: Dictionary<String, Any> = ["eventName" : "SIGNED_IN"]
                self.sendEvent(flutterEvent: hubEvent)
            case HubPayload.EventName.Auth.sessionExpired:
                let hubEvent: Dictionary<String, Any> = ["eventName" : "SESSION_EXPIRED"]
                self.sendEvent(flutterEvent: hubEvent)
            case HubPayload.EventName.Auth.signedOut:
                let hubEvent: Dictionary<String, Any> = ["eventName" : "SIGNED_OUT"]
                self.sendEvent(flutterEvent: hubEvent)
            case HubPayload.EventName.Amplify.configured:
                print("AuthPlugin successfully initialized")
            default:
                print("Unrecognized Auth Event")
            }
        }
    }

    func sendEvent(flutterEvent: [String : Any]) {
        eventSink?(flutterEvent)
    }

    public func onCancel(withArguments arguments: Any?) -> FlutterError? {
        eventSink = nil
        if (self.token != nil) {
            Amplify.Hub.removeListener(self.token!)
        }
        return nil
    }
}

