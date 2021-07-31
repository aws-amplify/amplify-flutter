import 'package:amplify_authenticator/src/text_customization/auth_strings_resolver.dart';
import 'package:amplify_authenticator/src/strings/auth_strings.dart';
import 'package:amplify_authenticator/src/text_customization/input_resolver.dart';

/// The class for displaying input field strings
class InputStrings {
  /// The optional class that customers can pass to create custom values
  InputResolver? resolver;
  static const _username_title = "Username*";
  static const _username_hint = "Enter your username";
  static const _password_title = "Password*";
  static const _password_hint = "Enter your password";
  static const _email_title = "Email *";
  static const _email_hint = "Enter your email";
  static const _phone_number_title = "Phone Number *";
  static const _phone_number_hint = "Enter your phone number";
  static const _verification_code_title = "Verification Code*";
  static const _verification_code_hint = "Enter your verification code";

  // ignore: public_member_api_docs
  InputStrings({InputResolver? resolver}) {
    this.resolver = resolver;
  }

  /// Evaluates username_title to a resolver or default value
  String get username_title {
    return resolver?.username_title != null
        ? resolver!.username_title!()
        : _username_title;
  }

  /// Evaluates username_hint to a resolver or default value
  String get username_hint {
    return resolver?.username_hint != null
        ? resolver!.username_hint!()
        : _username_hint;
  }

  /// Evaluates password_title to a resolver or default value
  String get password_title {
    return resolver?.password_title != null
        ? resolver!.password_title!()
        : _password_title;
  }

  /// Evaluates password_hint to a resolver or default value
  String get password_hint {
    return resolver?.password_hint != null
        ? resolver!.password_hint!()
        : _password_hint;
  }

  /// Evaluates email_title to a resolver or default value
  String get email_title {
    return resolver?.email_title != null
        ? resolver!.email_title!()
        : _email_title;
  }

  /// Evaluates email_hint to a resolver or default value
  String get email_hint {
    return resolver?.email_hint != null ? resolver!.email_hint!() : _email_hint;
  }

  /// Evaluates phone_number_title to a resolver or default value
  String get phone_number_title {
    return resolver?.phone_number_title != null
        ? resolver!.phone_number_title!()
        : _phone_number_title;
  }

  /// Evaluates phone_number_hint to a resolver or default value
  String get phone_number_hint {
    return resolver?.phone_number_hint != null
        ? resolver!.phone_number_hint!()
        : _phone_number_hint;
  }

  /// Evaluates verification_code_title to a resolver or default value
  String get verification_code_title {
    return resolver?.verification_code_title != null
        ? resolver!.verification_code_title!()
        : _verification_code_title;
  }

  /// Evaluates verification_code_hint to a resolver or default value
  String get verification_code_hint {
    return resolver?.verification_code_hint != null
        ? resolver!.verification_code_hint!()
        : _verification_code_hint;
  }
}
