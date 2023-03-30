// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:io';

import 'package:aws_common/aws_common.dart';

/// Whether a test is running in a CI environment.
final bool isCI = const bool.fromEnvironment('CI') ||
    (!zIsWeb && Platform.environment.containsKey('CI'));
