import 'package:collection/collection.dart';

enum SignUpType {
  username,
  password,
  address,
  birthdate,
  email,
  family_name,
  gender,
  given_name,
  locale,
  middle_name,
  name,
  nickname,
  phone_number,
  picture,
  preferredUsername,
  profile,
  zoneinfo,
  updated_at,
  website
}

SignUpType? fromStringToSignUpType(String str) {
  return SignUpType.values
      .firstWhereOrNull((value) => value.toString().split('.')[1] == str);
}
