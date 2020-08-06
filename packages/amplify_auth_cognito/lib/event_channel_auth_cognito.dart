import 'package:flutter/services.dart';

typedef void Listener(dynamic msg);
typedef void CancelListening();

class AmplifyAuthCognitoEventChannel {
  var events = const EventChannel("com.amazonaws.amplify/auth_cognito_events");

  int nextListenerId = 1;

  CancelListening startListening(Listener listener) {
    var subscription = events.receiveBroadcastStream(
      nextListenerId++
    ).listen(listener, cancelOnError: true);
    return () {
      subscription.cancel();
    };
  }
} 
