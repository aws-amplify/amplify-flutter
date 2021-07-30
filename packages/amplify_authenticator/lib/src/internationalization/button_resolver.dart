import 'package:amplify_authenticator/src/internationalization/resolver_typedef.dart';

/// The resolver class for shared button Widgets
class ButtonResolver {
  /// Label of signin form button
  StringResolver? submit_signin;

  /// Label of signin form button
  StringResolver? submit_signup;

  /// Label of confirm forms' button
  StringResolver? submit_confirm;

  /// Text for navigating to the signup Widget
  StringResolver? navigate_signup;

  /// Text for navigating to the signin Widget
  StringResolver? navigate_signin;

  /// Text asking if user does not have an account
  StringResolver? no_account_question;

  /// Text asking if user has have an account
  StringResolver? have_account_question;

  // ignore: public_member_api_docs
  ButtonResolver(
      {this.submit_signin,
      this.submit_signup,
      this.submit_confirm,
      this.navigate_signin,
      this.navigate_signup,
      this.no_account_question,
      this.have_account_question});
}
