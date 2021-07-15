import 'package:amplify_authenticator/src/internationalization/auth_strings_resolver.dart';
import 'package:amplify_authenticator/src/strings/auth_strings.dart';

/// The class for displaying strings on the signIn Widget
class SignInStrings {
  /// The optional class that customers can pass to create custom values
  SignInScreenResolver? resolver;
  static const _title = "Sign In to Your Account";

  // ignore: public_member_api_docs
  SignInStrings({SignInScreenResolver? resolver}) {
    this.resolver = resolver;
  }

  /// Evaluates title to a resolver or default value
  String get title {
    return resolver != null ? resolver!.signIn_title() : _title;
  }
}
