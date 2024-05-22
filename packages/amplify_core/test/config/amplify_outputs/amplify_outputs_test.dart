// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';

import 'package:amplify_core/src/config/amplify_outputs/amplify_outputs.dart';
import 'package:test/test.dart';

import 'test_data.dart';

void main() {
  test(
      'Should successfully create an AmplifyOutputs object'
      ' from an amplify outputs json object.', () {
    final actualConfig = jsonDecode(amplifyoutputs) as Map<String, Object?>;
    final parsed = AmplifyOutputs.fromJson(actualConfig);
    final expectedConfig = parsed.toJson();
    expect(actualConfig, equals(expectedConfig));
  });
}
