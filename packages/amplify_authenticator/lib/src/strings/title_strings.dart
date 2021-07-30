import 'package:amplify_authenticator/src/internationalization/auth_strings_resolver.dart';
import 'package:amplify_authenticator/src/internationalization/button_resolver.dart';
import 'package:amplify_authenticator/src/internationalization/title_resolver.dart';
import 'package:amplify_authenticator/src/strings/auth_strings.dart';

/// The class for displaying Authenticator Widget titles
class TitleStrings {
  /// The optional class that customers can pass to create custom values
  TitleResolver? resolver;

  static const _signin = "Sign in to your account";
  static const _signup = "Create your account";
  static const _confirm_signin = "Confirm your login";
  static const _confirm_signup = "Confirm your account";

  // ignore: public_member_api_docs
  TitleStrings({TitleResolver? resolver}) {
    this.resolver = resolver;
  }

  /// Evaluates signin to a resolver or default value
  String get signin {
    return resolver?.signin != null ? resolver!.signin!() : _signin;
  }

  /// Evaluates signup to a resolver or default value
  String get signup {
    return resolver?.signup != null ? resolver!.signup!() : _signup;
  }

  /// Evaluates confirm_signin to a resolver or default value
  String get confirm_signin {
    return resolver?.confirm_signin != null
        ? resolver!.confirm_signin!()
        : _confirm_signin;
  }

  /// Evaluates confirm_signup to a resolver or default value
  String get confirm_signup {
    return resolver?.confirm_signup != null
        ? resolver!.confirm_signup!()
        : _confirm_signup;
  }
}
