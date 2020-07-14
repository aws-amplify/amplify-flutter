import 'package:amplify_auth_plugin_interface/amplify_auth_plugin_interface.dart';
import 'package:flutter/foundation.dart';

class CognitoConfirmSignUpRequest extends ConfirmSignUpRequest  {
    CognitoConfirmSignUpRequest({@required username, @required String confirmationCode}) : super(username, confirmationCode);
}