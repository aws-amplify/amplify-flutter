// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// Descriptors for working in the test sandbox.
///
/// It's recommended that tests import this like:
/// ```dart
/// import 'helpers/descriptors.dart' as d;
/// ```
@visibleForTesting
library descriptors;

import 'package:meta/meta.dart';

export 'package:test_descriptor/test_descriptor.dart';

export 'src/test/package_descriptor.dart';
export 'src/test/pubspec_descriptor.dart';
export 'src/test/repo_descriptor.dart';
