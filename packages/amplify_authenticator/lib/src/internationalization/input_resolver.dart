import 'package:amplify_authenticator/src/internationalization/resolver_typedef.dart';

class InputResolver {
  StringResolver? username_title;
  StringResolver? username_hint;
  StringResolver? password_title;
  StringResolver? password_hint;
  StringResolver? signIn_button;
  StringResolver? signIn_create;
  StringResolver? signIn_noAccount;

  InputResolver({
    this.username_title,
    this.username_hint,
    this.password_title,
    this.password_hint,
    this.signIn_button,
    this.signIn_create,
    this.signIn_noAccount
  });
}
