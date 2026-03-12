// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_foundation_dart/amplify_foundation_dart.dart'
    show AmplifyLogging, AmplifySimplePrinterLogSink, LogLevel;
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'kinesis_integration_test.dart' as kinesis_integration_tests;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  // Register a verbose log sink so all Kinesis internal logs are visible.
  AmplifyLogging.addSink(
    AmplifySimplePrinterLogSink(logLevel: LogLevel.verbose),
  );

  group('aws_kinesis_datastreams', kinesis_integration_tests.main);
}
