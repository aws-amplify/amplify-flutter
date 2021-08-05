import 'package:collection/collection.dart';

enum SignInType {
  username,
  password,
  email,
  phone_number,
  verification_code,
  new_password,
  new_username
}

SignInType? fromStringToSignInType(String str) {
  return SignInType.values
      .firstWhereOrNull((value) => value.toString().split('.')[1] == str);
}
