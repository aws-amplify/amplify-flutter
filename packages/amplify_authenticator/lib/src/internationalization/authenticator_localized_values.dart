class AuthenticatorLocalizedValues {
    final _signIn_title;
    final _username_title;
    final _username_hint;
    const AuthenticatorLocalizedValues({
      required String signIn_title,
      required String username_title,
      required String username_hint
    }) : 
    _signIn_title = signIn_title,
    _username_title = username_title,
    _username_hint = username_hint;

  String get signIn_title {
    return _signIn_title;
  }

  String get username_title {
    return _username_title;
  }

  String get username_hint {
    return _username_hint;
  }
}
