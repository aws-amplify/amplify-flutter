// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:math';

import 'package:amplify_core/amplify_core.dart';

final random = Random();

const uppercaseLetters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
const lowercaseLetters = 'abcdefghijklmnopqrstuvwxyz';
const digits = '1234567890';
const symbols = r'~/`!@#$%^&*(),._?:;{}|<>';

/// Returns a random digit character.
String _randomDigit() => digits[random.nextInt(digits.length)];

/// Generates a unique seed from the current time and a random value
/// to avoid phone number collisions across test runs.
int _uniqueSeed() =>
    DateTime.now().microsecondsSinceEpoch + random.nextInt(10000);

String generatePhoneNumber() {
  final seed = _uniqueSeed();
  final areaCode = (seed % 1000).toString().padLeft(3, _randomDigit());
  final suffix = '${_randomDigit()}${_randomDigit()}';
  return '+1${areaCode}55501$suffix';
}

PhoneNumber generateUSPhoneNumber() {
  const countryCode = '+1';
  final seed = _uniqueSeed();
  final areaCode = (seed % 1000).toString().padLeft(3, _randomDigit());
  final suffix = '${_randomDigit()}${_randomDigit()}';
  return PhoneNumber(
    countryCode: countryCode,
    areaCode: areaCode,
    phoneNumber: '55501$suffix',
  );
}

PhoneNumber generateFrenchPhoneNumber() {
  const countryCode = '+33';
  const areaCode = '1';
  final seed = _uniqueSeed();
  final suffix = (seed % 1000).toString().padLeft(3, _randomDigit()) + _randomDigit();
  return PhoneNumber(
    countryCode: countryCode,
    areaCode: areaCode,
    phoneNumber: '9900$suffix',
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
  PhoneNumber({
    required this.countryCode,
    this.areaCode = '',
    required this.phoneNumber,
  });
  final String countryCode;
  final String? areaCode;
  final String phoneNumber;

  /// returns a phone number without the country code
  String withOutCountryCode() => '$areaCode$phoneNumber';

  /// Returns an E.164 formatted phone number
  ///
  /// See https://en.wikipedia.org/wiki/E.164
  ///
  /// Example: +15551234444 for a US number
  String toE164() => '$countryCode$areaCode$phoneNumber';
}
