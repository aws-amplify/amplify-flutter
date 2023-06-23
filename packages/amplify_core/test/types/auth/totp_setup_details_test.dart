// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:test/test.dart';

void main() {
  group('TotpSetupDetails', () {
    const details =
        TotpSetupDetails(secretCode: 'secretCode', username: 'username');

    test('Correct encodes appName/issuer', () {
      final setupUri = details.getSetupUri(appName: 'My Application');
      expect(
        setupUri.toString(),
        'otpauth://totp/My%20Application:username?secret=secretCode&issuer=My%20Application',
      );
    });
  });
}
