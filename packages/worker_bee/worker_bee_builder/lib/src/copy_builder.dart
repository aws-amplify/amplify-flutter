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

import 'dart:async';
import 'dart:convert';

import 'package:build/build.dart';
import 'package:path/path.dart' as p;

/// Copies the generated workers to [_publishedWorkersJs].
class WorkerCopyBuilder extends Builder {
  @override
  late final Map<String, List<String>> buildExtensions = {
    '.debug.dart.js': ['.js'],
    '.release.dart.js': ['.min.js'],
    '.debug.dart.js.map': ['.js.map'],
    '.release.dart.js.map': ['.min.js.map']
  };

  static final _sourceMapUrl = RegExp(r'sourceMappingURL=[\w\.]*');

  @override
  Future<void> build(BuildStep buildStep) async {
    final originalFilename = p.basename(buildStep.inputId.path);
    final filename = originalFilename
        .replaceFirst('.debug.dart.js', '.js')
        .replaceFirst('.release.dart.js', '.min.js');
    var input = await buildStep.readAsString(buildStep.inputId);
    if (buildStep.inputId.path.endsWith('.js')) {
      input = input.replaceFirst(
        _sourceMapUrl,
        'sourceMappingURL=$filename.map',
      );
    } else {
      final sourceMapJson = jsonDecode(input) as Map;
      sourceMapJson['file'] = filename.replaceFirst(RegExp(r'.map$'), '');
      input = jsonEncode(sourceMapJson);
    }
    final outputId = AssetId(
      buildStep.inputId.package,
      p.join(
        p.dirname(buildStep.inputId.path),
        filename,
      ),
    );
    await buildStep.writeAsString(outputId, input);
  }
}
