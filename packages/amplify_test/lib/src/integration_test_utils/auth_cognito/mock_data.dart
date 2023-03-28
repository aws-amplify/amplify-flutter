// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:math';

import 'package:amplify_core/amplify_core.dart';

final random = Random();

const uppercaseLetters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
const lowercaseLetters = 'abcdefghijklmnopqrstuvwxyz';
const digits = '1234567890';
const symbols = '~/`!@#\$%^&*(),._?:;{}|<>';

String generatePhoneNumber() {
  final buf = StringBuffer('+1');
  for (var i = 0; i < 3; i++) {
    buf.write(digits[random.nextInt(digits.length)]);
  }
  buf.write('55501');
  for (var i = 0; i < 2; i++) {
    buf.write(digits[random.nextInt(digits.length)]);
  }
  return buf.toString();
}

PhoneNumber generateUSPhoneNumber() {
  const countryCode = '+1';
  var areaCode = '';
  for (var i = 0; i < 3; i++) {
    areaCode += digits[random.nextInt(digits.length)];
  }
  var phoneNumber = '55501';
  for (var i = 0; i < 2; i++) {
    phoneNumber += digits[random.nextInt(digits.length)];
  }
  return PhoneNumber(
    countryCode: countryCode,
    areaCode: areaCode,
    phoneNumber: phoneNumber,
  );
}

PhoneNumber generateFrenchPhoneNumber() {
  const countryCode = '+33';
  const areaCode = '1';
  var phoneNumber = '9900';
  for (var i = 0; i < 4; i++) {
    phoneNumber += digits[random.nextInt(digits.length)];
  }
  return PhoneNumber(
    countryCode: countryCode,
    areaCode: areaCode,
    phoneNumber: phoneNumber,
  );
}

String generateEmail() => 'test-amplify-flutter-${uuid()}@test${uuid()}.com';

String generateUsername() => 'TEMP_USER-${uuid()}';

String generatePassword() =>
    uuid() +
    uppercaseLetters[random.nextInt(uppercaseLetters.length)] +
    symbols[random.nextInt(symbols.length)];

String generateNameAttribute() => 'FAKE-NAME-${uuid()}';

class PhoneNumber {
  final String countryCode;
  final String? areaCode;
  final String phoneNumber;

  PhoneNumber({
    required this.countryCode,
    this.areaCode = '',
    required this.phoneNumber,
  });

  /// returns a phone number without the country code
  String withOutCountryCode() => '$areaCode$phoneNumber';

  /// Returns an E.164 formatted phone number
  ///
  /// See https://en.wikipedia.org/wiki/E.164
  ///
  /// Example: +15551234444 for a US number
  String toE164() => '$countryCode$areaCode$phoneNumber';
}
