import 'package:flutter/services.dart';

typedef Listener = void Function(dynamic msg);
typedef CancelListening = void Function();

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
