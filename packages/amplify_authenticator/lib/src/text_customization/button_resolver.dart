import 'package:amplify_authenticator/src/text_customization/resolver_typedef.dart';

/// The resolver class for shared button Widgets
class ButtonResolver {
  /// Label of signin form button
  StringResolver? signin;

  /// Label of signin form button
  StringResolver? signup;

  /// Label of confirm forms' button
  StringResolver? confirm;
  // ignore: public_member_api_docs
  ButtonResolver({this.signin, this.signup, this.confirm});
}
