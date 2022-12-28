// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aws_common/src/config/aws_path_provider.dart';
import 'package:meta/meta.dart';

/// {@macro aws_common.lookup_platform_env}
@internal
String? lookupPlatformEnv(String key) =>
    // ignore: invalid_use_of_visible_for_testing_member
    environmentOverrides?[key];
