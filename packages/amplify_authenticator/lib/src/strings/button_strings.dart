import 'package:amplify_authenticator/src/internationalization/auth_strings_resolver.dart';
import 'package:amplify_authenticator/src/internationalization/button_resolver.dart';
import 'package:amplify_authenticator/src/strings/auth_strings.dart';

/// The class for displaying button labels
class ButtonStrings {
  /// The optional class that customers can pass to create custom values
  ButtonResolver? resolver;

  static const _navigate_signup = "Create account";
  static const _navigate_signin = "Sign In";
  static const _submit_signin = "Sign In";
  static const _submit_signup = "Create Account";
  static const _submit_confirm = "Confirm";
  static const _no_account_question = "No account?";
  static const _have_account_question = "Have an account?";

  // ignore: public_member_api_docs
  ButtonStrings({ButtonResolver? resolver}) {
    this.resolver = resolver;
  }

  /// Evaluates no_account_question to a resolver or default value
  String get no_account_question {
    return resolver?.no_account_question != null
        ? resolver!.no_account_question!()
        : _no_account_question;
  }

  /// Evaluates navigate_signup to a resolver or default value
  String get navigate_signup {
    return resolver?.navigate_signup != null
        ? resolver!.navigate_signup!()
        : _navigate_signup;
  }

  /// Evaluates navigate_signin to a resolver or default value
  String get navigate_signin {
    return resolver?.navigate_signin != null
        ? resolver!.navigate_signin!()
        : _navigate_signin;
  }

  /// Evaluates navigate_signin to a resolver or default value
  String get submit_signin {
    return resolver?.submit_signin != null
        ? resolver!.submit_signin!()
        : _submit_signin;
  }

  /// Evaluates submit_signup to a resolver or default value
  String get submit_signup {
    return resolver?.submit_signup != null
        ? resolver!.submit_signup!()
        : _submit_signup;
  }

  /// Evaluates submit_confirm_signup to a resolver or default value
  String get submit_confirm {
    return resolver?.submit_confirm != null
        ? resolver!.submit_confirm!()
        : _submit_confirm;
  }

  /// Evaluates have_account_question to a resolver or default value
  String get have_account_question {
    return resolver?.have_account_question != null
        ? resolver!.have_account_question!()
        : _have_account_question;
  }
}
