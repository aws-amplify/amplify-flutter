import 'package:amplify_authenticator/src/text_customization/resolver_typedef.dart';

/// The resolver class for shared input Widgets
class InputResolver {
  /// Title of username field
  StringResolver? username_title;

  /// Hint of username field
  StringResolver? username_hint;

  /// Title of password field
  StringResolver? password_title;

  /// Hint of password field
  StringResolver? password_hint;

  /// Title of email field
  StringResolver? email_title;

  /// Hint of email field
  StringResolver? email_hint;

  /// Title of phone number field
  StringResolver? phone_number_title;

  /// Hint of phone number field
  StringResolver? phone_number_hint;

  /// Title of verification code field
  StringResolver? verification_code_title;

  /// Hint of verification code field
  StringResolver? verification_code_hint;

  // ignore: public_member_api_docs
  InputResolver(
      {this.username_title,
      this.username_hint,
      this.password_title,
      this.password_hint,
      this.email_title,
      this.email_hint,
      this.phone_number_title,
      this.phone_number_hint,
      this.verification_code_title,
      this.verification_code_hint});
}
