// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_foundation_dart/amplify_foundation_dart.dart';

class AmplifyLog {
  AmplifyLog({
    required this.timestamp,
    required this.name,
    required this.level,
    required this.message,
    this.error,
    this.stackTrace,
  });

  DateTime timestamp;
  String name;
  LogLevel level;
  String message;
  Object? error;
  StackTrace? stackTrace;
}
