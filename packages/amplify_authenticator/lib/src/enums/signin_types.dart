enum SignInType {
  username,
  password,
  email,
  phone_number,
}

SignInType fromStringToSignInType(String str) {
  return SignInType.values
      .firstWhere((value) => value.toString().split('.')[1] == str);
}
