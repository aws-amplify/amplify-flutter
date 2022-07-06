//
// Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License").
// You may not use this file except in compliance with the License.
// A copy of the License is located at
//
//  http://aws.amazon.com/apache2.0
//
// or in the "license" file accompanying this file. This file is distributed
// on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
// express or implied. See the License for the specific language governing
// permissions and limitations under the License.
//

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
