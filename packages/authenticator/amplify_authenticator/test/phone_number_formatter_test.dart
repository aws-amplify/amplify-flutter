// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_authenticator/src/utils/dial_code.dart';
import 'package:amplify_authenticator/src/utils/phone_number_formatter.dart';
import 'package:collection/collection.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:phone_numbers_parser/metadata.dart';
import 'package:phone_numbers_parser/phone_numbers_parser.dart';

void main() {
  IsoCode? isoCodeOf(DialCode dialCode) {
    final name = dialCode.dialCode;
    final isoCode = name.length == 3 ? name.substring(0, 2) : name;
    return IsoCode.values.firstWhereOrNull((value) => value.name == isoCode);
  }

  /// The digits a caller enters for [example] having selected [dialCode], or
  /// null where the parser resolves it to another region.
  String? entryFor(DialCode dialCode, String example) {
    final isoCode = isoCodeOf(dialCode);
    if (isoCode == null) {
      return null;
    }
    try {
      final parsed = PhoneNumber.parse(example, callerCountry: isoCode);
      final prefix = '+${dialCode.value}';
      if (!parsed.isValid() || !parsed.international.startsWith(prefix)) {
        return null;
      }
      return parsed.international.substring(prefix.length);
    } on PhoneNumberException {
      return null;
    }
  }

  final entries = DialCode.values.expand((dialCode) {
    final isoCode = isoCodeOf(dialCode);
    final examples = isoCode == null
        ? null
        : metadataExamplesByIsoCode[isoCode];
    if (examples == null) {
      return const Iterable<(DialCode, String)>.empty();
    }
    return [examples.mobile, examples.fixedLine]
        .map((example) => entryFor(dialCode, example))
        .whereType<String>()
        .map((entry) => (dialCode, entry));
  }).toList();

  group('nationalPhoneNumber', () {
    test('keeps a national number', () {
      expect(nationalPhoneNumber('771234567', DialCode.lk), '771234567');
    });

    test('drops a repeated dial code', () {
      expect(nationalPhoneNumber('94771234567', DialCode.lk), '771234567');
    });

    test('drops a repeated dial code that includes an area code', () {
      expect(nationalPhoneNumber('8767771234', DialCode.jm), '7771234');
    });

    test('keeps a national number that begins with its dial code', () {
      expect(nationalPhoneNumber('7011234567', DialCode.kz), '7011234567');
    });

    test('drops a trunk prefix', () {
      expect(nationalPhoneNumber('0771234567', DialCode.lk), '771234567');
    });

    test('drops a trunk prefix the region states as an alternative', () {
      expect(nationalPhoneNumber('868123456', DialCode.lt), '68123456');
    });

    test('keeps the digits a wider prefix pattern would consume', () {
      expect(nationalPhoneNumber('03211234567', DialCode.co), '3211234567');
    });

    test('keeps a value that is not a number the region assigns', () {
      expect(nationalPhoneNumber('1', DialCode.lk), '1');
    });

    test('keeps a value for a region the parser assigns no numbers to', () {
      expect(nationalPhoneNumber('771234567', DialCode.aq), '771234567');
    });

    test('keeps a number the selected dial code does not reach', () {
      // The Dominican Republic answers to three area codes, only one of which
      // this dial code states
      expect(nationalPhoneNumber('8092345678', DialCode.do1), '8092345678');
    });

    test('keeps a value the parser rejects outright', () {
      expect(nationalPhoneNumber('+', DialCode.lk), '+');
    });
  });

  group('every region', () {
    test('leaves the numbers the parser publishes alone', () {
      for (final (dialCode, entry) in entries) {
        expect(
          nationalPhoneNumber(entry, dialCode),
          entry,
          reason: '${dialCode.dialCode} $entry',
        );
      }
    });

    test('drops a repeated dial code, except where both readings hold', () {
      final exceptions = <String>{};
      for (final (dialCode, entry) in entries) {
        if (nationalPhoneNumber('${dialCode.value}$entry', dialCode) != entry) {
          exceptions.add(dialCode.dialCode);
        }
      }
      // These regions assign the repeated form as a number of their own
      expect(exceptions, {'DE', 'ID', 'SE', 'XK'});
    });

    test('never reduces a value to nothing', () {
      for (final dialCode in DialCode.values) {
        for (final entry in ['0', '00', dialCode.value, '+', 'abc']) {
          expect(
            nationalPhoneNumber(entry, dialCode),
            isNotEmpty,
            reason: '${dialCode.dialCode} "$entry"',
          );
        }
      }
    });

    test('leaves an already corrected number unchanged', () {
      for (final (dialCode, entry) in entries) {
        final corrected = nationalPhoneNumber(
          '${dialCode.value}$entry',
          dialCode,
        );
        expect(
          nationalPhoneNumber(corrected, dialCode),
          corrected,
          reason: '${dialCode.dialCode} $entry',
        );
      }
    });
  });
}
