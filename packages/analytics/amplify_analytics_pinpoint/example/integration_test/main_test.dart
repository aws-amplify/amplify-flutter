// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'auto_session_tracking_test.dart' as auto_session_tracking_tests;
import 'enable_disable_test.dart' as enable_disable_tests;
import 'events_test.dart' as events_tests;
import 'identify_user_test.dart' as identify_user_tests;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  AWSLogger().logLevel = LogLevel.debug;

  group('amplify_analytics_pinpoint', () {
    auto_session_tracking_tests.main();
    enable_disable_tests.main();
    events_tests.main();
    identify_user_tests.main();
  });
}
