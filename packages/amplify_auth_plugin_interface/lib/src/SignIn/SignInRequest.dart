import 'package:amplify_auth_plugin_interface/src/Providers/AuthRequestProvider.dart';

class SignInRequest {
  String username;
  String password;
  AuthRequestProvider provider;
  SignInRequest({this.username, this.password, this.provider});
  Map<String, dynamic> serializeAsMap() {
    final Map<String, dynamic> pendingRequest = <String, dynamic>{};
    if (username != null) {
      pendingRequest['username'] = username;
    }
    if (password != null) {
      pendingRequest['password'] = password;
    }
    if (provider != null) {
      pendingRequest['providerOptions'] = provider.serializeAsMap();
    }
    return pendingRequest;
  }
}