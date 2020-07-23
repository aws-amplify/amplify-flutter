import 'package:amplify_auth_plugin_interface/src/Providers/AuthRequestProvider.dart';

class ConfirmSignUpRequest {
  String userKey;
  String confirmationCode;
  AuthRequestProvider provider;
  ConfirmSignUpRequest({this.userKey, this.confirmationCode, this.provider});
  Map<String, dynamic> serializeAsMap() {
    final Map<String, dynamic> pendingRequest = <String, dynamic>{};
    if (userKey != null) {
      pendingRequest['userKey'] = userKey;
    }
    if (confirmationCode != null) {
      pendingRequest['confirmationCode'] = confirmationCode;
    }
    if (provider != null) {
      pendingRequest['providerOptions'] = provider.serializeAsMap();
    }
    return pendingRequest;
  }
}