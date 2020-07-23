import 'package:amplify_auth_plugin_interface/src/Errors/AuthError.dart';
import 'SignOutState.dart';
import '../Providers/AuthResultProvider.dart';
import '../EnumHandler.dart';


class SignOutResult { 
  String signOutState;
  AuthResultProvider providerResult;
  AuthError error;
  SignOutResult.init(this.signOutState, [AuthResultProvider providerResult, AuthError authError]) {
    /* 2-step process of getting an enum from a string and back is a way of checking that
     the value is a valid enum while also maintaining simple string value */
    this.signOutState = enumToString(enumFromString<SignOutState>(signOutState, SignOutState.values));
    this.error = authError;
    this.providerResult = providerResult;
   }
}