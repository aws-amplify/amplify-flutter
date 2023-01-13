// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

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
