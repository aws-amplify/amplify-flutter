// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'connect_client_integration_test.dart' as connect_integration_tests;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('amplify_connect_client', connect_integration_tests.main);
}
