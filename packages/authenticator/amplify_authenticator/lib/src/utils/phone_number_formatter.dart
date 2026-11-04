// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_authenticator/src/utils/dial_code.dart';
import 'package:phone_numbers_parser/phone_numbers_parser.dart';

final _isoCodes = {for (final isoCode in IsoCode.values) isoCode.name: isoCode};

/// Returns [phoneNumber] without a dial code or trunk prefix it repeats, or
/// unchanged where it does not read as a number [dialCode] assigns.
String nationalPhoneNumber(String phoneNumber, DialCode dialCode) {
  final isoCode = _isoCodeOf(dialCode);
  if (isoCode == null) {
    return phoneNumber;
  }
  try {
    final parsed = PhoneNumber.parse(phoneNumber, callerCountry: isoCode);
    // A dial code may carry an area code, so the whole prefix has to match
    final prefix = '+${dialCode.value}';
    if (!parsed.isValid() || !parsed.international.startsWith(prefix)) {
      return phoneNumber;
    }
    return parsed.international.substring(prefix.length);
  } on PhoneNumberException {
    return phoneNumber;
  }
}

// `DialCode.dialCode` is the ISO code, suffixed with "1" where it is a keyword
IsoCode? _isoCodeOf(DialCode dialCode) {
  final name = dialCode.dialCode;
  return _isoCodes[name.length == 3 ? name.substring(0, 2) : name];
}
