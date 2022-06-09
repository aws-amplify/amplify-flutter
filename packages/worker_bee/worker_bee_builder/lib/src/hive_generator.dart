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

import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';
import 'package:worker_bee/worker_bee.dart';

/// {@macro worker_bee_builder.worker_hive_builder}
class WorkerHiveGenerator extends GeneratorForAnnotation<WorkerHive> {
  @override
  Future<String> generateForAnnotatedElement(
    Element element,
    ConstantReader annotation,
    BuildStep buildStep,
  ) async {
    if (element is! FunctionElement || !element.isEntryPoint) {
      throw ArgumentError(
        '@WorkerHive can only be applied to the main method.',
      );
    }

    // Collect workers
    final workerObjects = annotation.read('workers').listValue;
    final workers = workerObjects.map((obj) => obj.toTypeValue()!);

    final output = StringBuffer()
      ..writeln('final workers = <String, WorkerBeeBuilder>{');

    for (final workerType in workers) {
      final workerName = workerType.getDisplayString(withNullability: false);
      output.writeln("'$workerName': $workerName.create,");
    }

    output.writeln('};');

    return output.toString();
  }
}
