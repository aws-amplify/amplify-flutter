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

import 'package:amplify_codegen/src/generate.dart';
import 'package:path/path.dart' as path;

void main() {
  final schemaDir = Directory.fromUri(
    Platform.script.resolve('../test/schemas'),
  );
  final goldensDir = Directory.fromUri(
    Platform.script.resolve('../test/goldens'),
  );
  if (goldensDir.existsSync()) {
    goldensDir.deleteSync(recursive: true);
  }
  for (final entity in schemaDir.listSync(recursive: true).whereType<File>()) {
    final schema = File(entity.path).readAsStringSync();
    final schemaName = path.basenameWithoutExtension(entity.path);
    stdout.writeln('Generating schema for $schemaName');
    final generated = generateForSchema(schema);
    final outputPath = path.join(
      goldensDir.path,
      path.relative(
        path.join(path.dirname(entity.path), schemaName),
        from: schemaDir.path,
      ),
    );
    final outputDir = Directory(outputPath)..createSync(recursive: true);
    for (final entry in generated.entries) {
      final filename = '${entry.key.split('.').last}.dart';
      stdout.writeln('  -- Generated $filename');
      File.fromUri(outputDir.uri.resolve(filename))
          .writeAsStringSync(entry.value.emit());
    }
  }
  // TODO(dnys1): Re-enable when all APIs are implemented
  // Process.runSync('dart', ['fix', '--apply', goldensDir.path]);
  Process.runSync('dart', ['format', '--fix', goldensDir.path]);
}
