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

import 'dart:async';
import 'package:flutter/services.dart';
import 'src/CognitoHubEvents/AuthHubEvent.dart';

EventChannel channel = const EventChannel("com.amazonaws.amplify/auth_cognito_events");
StreamSubscription eventStream;

class AuthStreamController {
  StreamController get authStreamController {
    return _authStreamController;
  }
}

StreamController _authStreamController = StreamController<AuthHubEvent>.broadcast(
  onListen: _onListen,
  onCancel: _onCancel,
);

_onListen() {
  if (eventStream == null ) {
    eventStream = channel.receiveBroadcastStream(1).listen((event) {
      switch(event["eventName"]) {
        case "SIGNED_IN": {
          _authStreamController.add(AuthHubEvent(event["eventName"]));
        }
        break;
        case "SIGNED_OUT": {
          _authStreamController.add(AuthHubEvent(event["eventName"]));
        }
        break;
        case "SESSION_EXPIRED": {
          _authStreamController.add(AuthHubEvent(event["eventName"]));
        }
        break;
        default: {
          print('An Unrecognized Auth Hub event has been detected on the event channel.');
        }
      }
    });
  }
}

_onCancel() {
  if (!_authStreamController.hasListener) {
    eventStream.cancel();
    eventStream = null;
  }
} 
