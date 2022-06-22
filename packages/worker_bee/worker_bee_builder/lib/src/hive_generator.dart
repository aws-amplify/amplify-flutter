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
import 'package:code_builder/code_builder.dart';
import 'package:source_gen/source_gen.dart' hide LibraryBuilder;
import 'package:worker_bee/worker_bee.dart';
import 'package:worker_bee_builder/src/type_visitor.dart';
import 'package:worker_bee_builder/src/types.dart';
import 'package:worker_bee_builder/src/worker_generator.dart';

/// {@macro worker_bee_builder.worker_hive_builder}
class WorkerHiveGenerator extends GeneratorForAnnotation<WorkerHive> {
  static const _symbolVisitor = SymbolVisitor();

  @override
  Future<String?> generateForAnnotatedElement(
    Element element,
    ConstantReader annotation,
    BuildStep buildStep,
  ) async {
    if (element is! LibraryElement) {
      throw ArgumentError(
        '@WorkerHive can only be applied to a library declaration.',
      );
    }

    // Collect workers
    final workerObjects = annotation.read('workers').listValue;
    final workers = workerObjects.map((obj) => obj.toTypeValue()!);

    final lib = Library((b) {
      b.body.addAll([
        Field(
          (m) => m
            ..name = 'workers'
            ..modifier = FieldModifier.final$
            ..assignment = literalMap(
              {
                for (final workerType in workers)
                  workerType.getDisplayString(withNullability: false):
                      (workerType.accept(_symbolVisitor) as TypeReference)
                          .rebuild((t) => t.isNullable = false)
                          .property('create')
              },
              refer('String'),
              DartTypes.workerBee.workerBeeBuilder,
            ).code,
        ),
        Method.returnsVoid(
          (m) => m
            ..name = 'main'
            ..body = DartTypes.workerBee.runHive.call([
              refer('workers'),
            ]).code,
        )
      ]);
    });

    final emitter = createEmitter();
    final generated = formatter.format('${lib.accept(emitter)}\n');

    final outputIds = [
      buildStep.inputId.changeExtension('.debug.dart'),
      buildStep.inputId.changeExtension('.release.dart'),
    ];
    for (final outputId in outputIds) {
      await buildStep.writeAsString(outputId, generated);
    }

    return null;
  }
}
