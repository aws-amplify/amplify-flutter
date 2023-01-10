// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:math';

import 'package:uuid/uuid.dart';

final random = Random();
const uuid = Uuid();

const uppercaseLetters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
const lowercaseLetters = 'abcdefghijklmnopqrstuvwxyz';
const digits = '1234567890';
const symbols = '~/`!@#\$%^&\\"\'*(),._?:;{}|<>';
const String mockPhoneNumber = '+15555551234';
const String mockCode = '12345';

String generateEmail() => 'flutter-email-${randomNumber()}@test.com';

String generatePassword() =>
    uuid.v4() +
    uppercaseLetters[random.nextInt(uppercaseLetters.length)] +
    symbols[random.nextInt(symbols.length)];

/// generates a fake US phone number using a reserved number in the North America
///
/// See https://en.wikipedia.org/wiki/Fictitious_telephone_number#North_American_Numbering_Plan
PhoneNumber generateUSPhoneNumber() => PhoneNumber(
      countryCode: '+1',
      areaCode: '888',
      phoneNumber: '555${randomPhoneDigits(4)}',
    );

/// generates a fake french phone number using a reserved number in france
///
/// See https://en.wikipedia.org/wiki/Fictitious_telephone_number#France
PhoneNumber generateFrenchPhoneNumber() => PhoneNumber(
      countryCode: '+33',
      areaCode: '1',
      phoneNumber: '9900${randomPhoneDigits(4)}',
    );

String generateUsername() => 'flutter-user-${randomNumber()}';

int randomNumber() => random.nextInt(1 << 30);

String randomPhoneDigits(int count) {
  String value = '';
  for (var i = 0; i < count; i++) {
    value += random.nextInt(10).toString();
  }
  return value;
}

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
