import 'package:amplify_authenticator/src/internationalization/input_resolver.dart';
import 'package:amplify_authenticator/src/internationalization/signin_screen_resolver.dart';

export 'package:amplify_authenticator/src/internationalization/signin_screen_resolver.dart';
export 'package:amplify_authenticator/src/internationalization/input_resolver.dart';

class AuthStringsResolver {
  SignInScreenResolver signInScreen;
  InputResolver inputs;
  AuthStringsResolver({
    required this.signInScreen,
    required this.inputs
  });
}
