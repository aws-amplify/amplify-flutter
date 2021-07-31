import 'package:amplify_authenticator/src/text_customization/auth_strings_resolver.dart';
import 'package:amplify_authenticator/src/text_customization/button_resolver.dart';
import 'package:amplify_authenticator/src/strings/auth_strings.dart';

/// The class for displaying button labels
class ButtonStrings {
  /// The optional class that customers can pass to create custom values
  ButtonResolver? resolver;

  static const _signin = "Sign In";
  static const _signup = "Create Account";
  static const _confirm = "Confirm";

  // ignore: public_member_api_docs
  ButtonStrings({ButtonResolver? resolver}) {
    this.resolver = resolver;
  }

  /// Evaluates signin button to a resolver or default value
  String get signin {
    return resolver?.signin != null ? resolver!.signin!() : _signin;
  }

  /// Evaluates signup button to a resolver or default value
  String get signup {
    return resolver?.signup != null ? resolver!.signup!() : _signup;
  }

  /// Evaluates confirm button to a resolver or default value
  String get confirm {
    return resolver?.confirm != null ? resolver!.confirm!() : _confirm;
  }
}
