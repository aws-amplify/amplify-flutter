// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:io';

/// Whether a test is running in a CI environment.
final bool isCI =
    const bool.fromEnvironment('CI') || Platform.environment.containsKey('CI');
