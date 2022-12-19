// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:math';

import 'package:amplify_flutter/amplify_flutter.dart';

final random = Random();

const uppercaseLetters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
const lowercaseLetters = 'abcdefghijklmnopqrstuvwxyz';
const digits = '1234567890';
const symbols = '~/`!@#\$%^&\\"\'*(),._?:;{}|<>';
const mockPhoneNumber = '+15555551234';

String generateEmail() => 'test-amplify-flutter-${uuid()}@test${uuid()}.com';

String generateUsername() => 'TEMP_USER-${uuid()}';

String generatePassword() =>
    uuid() +
    uppercaseLetters[random.nextInt(uppercaseLetters.length)] +
    symbols[random.nextInt(symbols.length)];

String generateNameAttribute() => 'FAKE-NAME-${uuid()}';
