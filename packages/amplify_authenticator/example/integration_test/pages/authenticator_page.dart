/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

import 'package:amplify_authenticator/src/keys.dart';
import 'package:flutter_test/flutter_test.dart';

class AuthenticatorPage {
  AuthenticatorPage({required this.tester});

  final WidgetTester tester;

  Finder get bannerFinder => find.byKey(keyAuthenticatorBanner);
  Finder get countrySelectField => find.byKey(keySelectCountryCode);
  Finder get countrySelectDialog => find.byKey(keyCountryDialog);
  Finder get countrySearchField => find.byKey(keyCountrySearchField);

  /// Then I see User not found banner
  Future<void> expectUserNotFound() async {
    expect(bannerFinder, findsOneWidget);
    Finder userNotFoundMessage = find.descendant(
      of: find.byKey(keyAuthenticatorBanner),
      matching: find.text('User does not exist.'),
    );
    expect(userNotFoundMessage, findsOneWidget);
  }

  /// Then I see Invalid code
  Future<void> expectInvalidCode() async {
    expect(bannerFinder, findsOneWidget);
    Finder userNotFoundMessage = find.descendant(
      of: find.byKey(keyAuthenticatorBanner),
      matching: find.textContaining('Invalid code or auth state for the user'),
    );
    expect(userNotFoundMessage, findsOneWidget);
  }

  Future<void> selectCountryCode() async {
    expect(countrySelectField, findsOneWidget);
    await tester.tap(countrySelectField);
    await tester.pumpAndSettle();
    expect(countrySelectDialog, findsOneWidget);
    expect(countrySearchField, findsOneWidget);
    await tester.enterText(countrySearchField, 'United States');
    Finder unitedStatesOption = find.descendant(
        of: find.byKey(keyCountryDialog),
        matching: find.textContaining('(+1)'));
    expect(unitedStatesOption, findsOneWidget);
    await tester.tap(unitedStatesOption);
  }
}
