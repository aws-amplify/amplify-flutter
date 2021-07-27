import 'package:collection/collection.dart';

enum SignInType {
  username,
  password,
  email,
  phone_number,
}

SignInType? fromStringToSignInType(String str) {
  return SignInType.values
      .firstWhereOrNull((value) => value.toString().split('.')[1] == str);
}
