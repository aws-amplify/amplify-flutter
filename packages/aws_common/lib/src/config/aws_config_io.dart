// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:io';

import 'package:aws_common/src/config/aws_path_provider.dart';
import 'package:meta/meta.dart';

/// {@template aws_common.lookup_platform_env}
/// Looks up a value from the platform environment.
/// {@endtemplate}
@internal
String? lookupPlatformEnv(String key) =>
    // ignore: invalid_use_of_visible_for_testing_member
    (environmentOverrides ?? Platform.environment)[key];
