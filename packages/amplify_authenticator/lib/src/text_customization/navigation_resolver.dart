import 'package:amplify_authenticator/src/text_customization/resolver_typedef.dart';

/// The resolver class for shared button Widgets
class NavigationResolver {
  /// Text for navigating to the signup Widget
  StringResolver? navigate_signup;

  /// Text for navigating to the signin Widget
  StringResolver? navigate_signin;

  /// Text asking if user does not have an account
  StringResolver? no_account_question;

  /// Text asking if user has have an account
  StringResolver? have_account_question;

  /// Text asking if user has have an account
  StringResolver? back_to_signin;

  // ignore: public_member_api_docs
  NavigationResolver(
      {this.navigate_signin,
      this.navigate_signup,
      this.no_account_question,
      this.have_account_question,
      this.back_to_signin});
}
