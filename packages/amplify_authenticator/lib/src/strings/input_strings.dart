import 'package:amplify_authenticator/src/internationalization/auth_strings_resolver_interface.dart';
import 'package:amplify_authenticator/src/strings/auth_strings.dart';
import 'package:amplify_authenticator/src/strings/auth_strings_interface.dart';

class InputStrings extends AuthStringsInterface {
  static const _username_title = "Username*";
  static const _username_hint = "Enter your username";
  static const _password_title = "Password*";
  static const _password_hint = "Enter your password";
  static const _signIn_noAccount = "No Account?";
  static const _signIn_create = "Create account";
  static const _signIn_button = "Sign In";

  InputStrings({AuthStringsResolver? resolver}) {
    this.resolver = resolver;
  }
  
  String get username_title {
    return resolver!.inputs.username_title != null ? resolver!.inputs.username_title!() : _username_title;
  }

  String get username_hint {
    return resolver!.inputs.username_hint != null ? resolver!.inputs.username_hint!() : _username_hint;
  }

  String get password_title {
    return resolver!.inputs.password_title != null  ? resolver!.inputs.password_title!() : _password_title;
  } 

  String get password_hint {
    return resolver!.inputs.password_hint != null  ? resolver!.inputs.password_hint!() : _password_hint;
  }

  String get signIn_noAccount {
    return resolver!.inputs.signIn_noAccount != null  ? resolver!.inputs.signIn_noAccount!() : _signIn_noAccount;
  }

  String get signIn_create {
    return resolver!.inputs.signIn_create != null  ? resolver!.inputs.signIn_create!() : _signIn_create;
  }

  String get signIn_button {
    return resolver!.inputs.signIn_button != null  ? resolver!.inputs.signIn_button!() : _signIn_button;
  }
}
