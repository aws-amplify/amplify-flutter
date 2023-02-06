// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:io';

import 'package:aft/aft.dart';

/// Adds git ref options and functionality to a command.
mixin GitRefOptions on AmplifyCommand {
  @override
  void init() {
    super.init();
    argParser
      ..addOption(
        'base-ref',
        help: 'The base ref to update against',
      )
      ..addOption(
        'head-ref',
        help: 'The head ref to update against',
      );
  }

  /// The base reference git operations should be based on.
  ///
  /// By default, this is the latest release tag.
  String? get baseRef {
    return Platform.environment['GITHUB_BASE_REF'] ??
        argResults!['base-ref'] as String?;
  }

  /// The head reference git operations should be based on.
  ///
  /// By default, this is the current `HEAD`.
  String get headRef {
    return Platform.environment['GITHUB_HEAD_REF'] ??
        argResults!['head-ref'] as String? ??
        'HEAD';
  }
}
