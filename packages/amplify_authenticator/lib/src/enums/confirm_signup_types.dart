import 'package:collection/collection.dart';

enum ConfirmSignUpType { username, password, email, phone_number, code }

ConfirmSignUpType? fromStringToConfirmSignUpType(String str) {
  return ConfirmSignUpType.values
      .firstWhereOrNull((value) => value.toString().split('.')[1] == str);
}
