import 'package:amplify_auth_plugin_interface/amplify_auth_plugin_interface.dart';

class CognitoConfirmSignInOptions extends ConfirmSignInOptions {
  Map<String, String> clientMetadata;
  CognitoConfirmSignInOptions({this.clientMetadata}) : super();
  Map<String, dynamic> serializeAsMap() {
    final Map<String, dynamic> pendingRequest = <String, dynamic>{};
    if (this.clientMetadata != null) {
      pendingRequest["validationData"] = clientMetadata;
    }
    return pendingRequest;
  }
}

