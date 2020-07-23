import 'package:amplify_auth_plugin_interface/amplify_auth_plugin_interface.dart';

class CognitoSignOutRequestProvider extends AuthRequestProvider {
  bool globalSignOut;
  CognitoSignOutRequestProvider({this.globalSignOut});
  Map<String, dynamic> serializeAsMap() {
    final Map<String, dynamic> pendingRequest = <String, dynamic>{};
    if (this.globalSignOut != null) {
      pendingRequest["globalSignOut"] = globalSignOut;
    }
    return pendingRequest;
  }
}