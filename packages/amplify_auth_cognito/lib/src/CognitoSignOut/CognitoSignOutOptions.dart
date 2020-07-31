import 'package:amplify_auth_plugin_interface/amplify_auth_plugin_interface.dart';

class CognitoSignOutOptions extends SignOutOptions {
  bool globalSignOut;
  CognitoSignOutOptions({this.globalSignOut}) : super();
  Map<String, dynamic> serializeAsMap() {
    final Map<String, dynamic> pendingRequest = <String, dynamic>{};
    if (this.globalSignOut != null) {
      pendingRequest["globalSignOut"] = globalSignOut;
    }
    return pendingRequest;
  }
}