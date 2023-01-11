// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aft/aft.dart';

/// Adds a `--fail-fast` flag to a command to control execution of long-running
/// or interdependent operations in multiple packages.
mixin FailFastOption on AmplifyCommand {
  @override
  void init() {
    super.init();
    argParser.addFlag(
      'fail-fast',
      help: 'When running commands for multiple packages, '
          'the first command triggers an exit.',
      defaultsTo: false,
    );
  }

  /// Whether to fail fast when running commands in multiple packages.
  late final failFast = argResults!['fail-fast'] as bool;
}
