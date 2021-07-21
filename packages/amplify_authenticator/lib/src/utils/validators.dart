final _emailRegex = RegExp(r'^\S+@\S+$');
final _codeRegex = RegExp(r'\d{6}');

String? validateUsername(String? username) {
  print(username);
  if (username == null || username.isEmpty) {
    return 'Username cannot be empty';
  }
  return null;
}

String? validatePassword(String? password) {
  if (password == null || password.isEmpty) {
    return 'Password cannot be empty';
  }
  return null;
}

String? validateEmail(String? email) {
  if (email == null || email.isEmpty) {
    return 'Email cannot be empty';
  }
  if (!_emailRegex.hasMatch(email)) {
    return 'Invalid email format';
  }
  return null;
}

String? validateCode(String? code) {
  if (code == null || code.isEmpty) {
    return 'Please enter the verification code';
  }
  if (!_codeRegex.hasMatch(code)) {
    return 'Invalid code format. Must be 6 digits.';
  }
  return null;
}
