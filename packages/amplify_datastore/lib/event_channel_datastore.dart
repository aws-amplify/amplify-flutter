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

import 'package:flutter/services.dart';

typedef void Listener(dynamic msg);
typedef void CancelListening();

class AmplifyDataStoreEventChannel {
  var events = const EventChannel("com.amazonaws.amplify/datastore_hub_events");
  var stream;
  listenToDataStore(Listener listener, {Function onError}) {
    // TODO: Assign as default parameter
    var errorHandler = onError ?? defaultErrorHandler;
    stream = events.receiveBroadcastStream(1).listen(listener, onError: errorHandler);
    return stream;
  }

  stopListeningToDataStore() {
    stream.cancel();
  }

  void defaultErrorHandler(e) {
    print(e);
  }
} 
