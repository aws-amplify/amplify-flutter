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

import 'package:build/build.dart';

/// Factory for the build script.
Builder copyBuilder(Object? _) => _CopyBuilder();

/// Copies the [_generatedWorkersJs] file to [_publishedWorkersJs].
class _CopyBuilder extends Builder {
  @override
  final Map<String, List<String>> buildExtensions = {
    _generatedWorkersJs.path: [_publishedWorkersJs.path]
  };

  @override
  void build(BuildStep buildStep) {
    if (buildStep.inputId != _generatedWorkersJs) {
      throw StateError(
        'Unexpected input for `CopyBuilder` expected only $_generatedWorkersJs',
      );
    }
    buildStep.writeAsString(
      _publishedWorkersJs,
      buildStep.readAsString(_generatedWorkersJs),
    );
  }
}

final _generatedWorkersJs =
    AssetId('amplify_auth_cognito_dart', 'lib/src/workers.dart.js');
final _publishedWorkersJs =
    AssetId('amplify_auth_cognito_dart', 'lib/src/workers.js');
