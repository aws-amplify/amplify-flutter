import 'package:flutter/services.dart';

typedef void Listener(dynamic msg);
typedef void CancelListening();

class AmplifyAuthCognitoEventChannel {
  var events = const EventChannel("com.amazonaws.amplify/auth_cognito_events");
  var stream;
  listenToAuth(Listener listener) {
    stream = events.receiveBroadcastStream(1).listen(listener);
    return stream;
  }

  stopListeningToAuth() {
    stream.cancel();
  }
} 
