enum ConfirmSignUpType { username, password, email, phone_number, code }

ConfirmSignUpType fromStringToConfirmSignUpType(String str) {
  return ConfirmSignUpType.values
      .firstWhere((value) => value.toString().split('.')[1] == str);
}
