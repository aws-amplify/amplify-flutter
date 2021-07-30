import 'package:collection/collection.dart';

enum Attributes {
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

Attributes? fromStringToAttributes(String str) {
  return Attributes.values
      .firstWhereOrNull((value) => value.toString().split('.')[1] == str);
}
