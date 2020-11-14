import 'package:flutter/services.dart';

typedef void Listener(dynamic msg);
typedef void CancelListening();

class AmplifyDataStoreEventChannel {
  var events = const EventChannel("com.amazonaws.amplify/datastore_hub_events");
  var stream;
  listenToDataStore(Listener listener) {
    stream = events.receiveBroadcastStream(1).listen(listener);
    return stream;
  }

  stopListeningToDataStore() {
    stream.cancel();
  }
} 
