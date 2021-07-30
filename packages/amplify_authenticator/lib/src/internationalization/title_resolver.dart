import 'package:amplify_authenticator/src/internationalization/resolver_typedef.dart';

/// The resolver class for screen titles
class TitleResolver {
  /// The title for the sign in Widget.
  StringResolver? signin;

  /// The title for the sign up Widget.
  StringResolver? signup;

  /// The title for the confirm sign up Widget.
  StringResolver? confirm_signup;

  /// The title for the confirm sign in Widget.
  StringResolver? confirm_signin;

  // ignore: public_member_api_docs
  TitleResolver(
      {this.signin, this.signup, this.confirm_signup, this.confirm_signin});
}
