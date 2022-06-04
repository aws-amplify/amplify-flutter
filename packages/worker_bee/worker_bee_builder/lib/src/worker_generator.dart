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
import 'package:dart_style/dart_style.dart';
import 'package:path/path.dart' as path;
import 'package:source_gen/source_gen.dart';
import 'package:worker_bee/worker_bee.dart';
import 'package:worker_bee_builder/src/impl/common.dart';
import 'package:worker_bee_builder/src/impl/js.dart';
import 'package:worker_bee_builder/src/impl/vm.dart';

/// {@macro worker_bee_builder.worker_bee_builder}
class WorkerBeeGenerator extends GeneratorForAnnotation<WorkerBee> {
  /// Creates an emitter instance with common configuration.
  DartEmitter createEmitter() => DartEmitter(
        allocator: Allocator(),
        orderDirectives: true,
        useNullSafetySyntax: true,
      );

  /// The common formatter for generated code.
  static final formatter = DartFormatter(
    fixes: StyleFix.all,
  );

  static const _generatedHeader = '''
// Generated by worker_bee_builder.
''';

  @override
  Future<String> generateForAnnotatedElement(
    Element element,
    ConstantReader annotation,
    BuildStep buildStep,
  ) async {
    if (element is! ClassElement) {
      throw ArgumentError('@WorkerBee can only be applied to classes.');
    }

    // Get generic arguments
    final supertype = element.supertype;
    if (supertype == null || (supertype.element.name != 'WorkerBeeBase')) {
      throw ArgumentError(
          '@WorkerBee classes must extends WorkerBeeBase<M, R>.');
    }
    final typeArgs = supertype.typeArguments;
    if (typeArgs.length < 2) {
      throw ArgumentError('@WorkerBee classes must declare their types.');
    }

    // Look up message type to generate JS/VM implementations.
    final requestType = typeArgs[0];
    final requestTypeEl = requestType.element;
    if (requestTypeEl == null || requestTypeEl is! ClassElement) {
      final requestTypeName =
          requestType.getDisplayString(withNullability: true);
      throw ArgumentError('Could not find element for $requestTypeName.');
    }

    final responseType = typeArgs[1];
    final responseTypeEl = responseType.element;

    final jsEntrypoint = annotation.read('jsEntrypoint').stringValue;
    final fallbackUrls = annotation
        .read('fallbackUrls')
        .listValue
        .map((obj) => obj.toStringValue())
        .toList()
        .cast<String>();
    final workerImpls = _generateWorkerImpls(
      element,
      requestTypeEl,
      responseTypeEl as ClassElement?,
      jsEntrypoint,
      fallbackUrls,
    );

    final libraries = <Target, String>{};
    for (final workerImpl in workerImpls) {
      final target = workerImpl.target.name;
      final assetId = buildStep.inputId.changeExtension('.worker.$target.dart');
      libraries[workerImpl.target] = path.basename(assetId.path);
      await buildStep.writeAsString(assetId, '''
$_generatedHeader

${workerImpl.impl}
''');
    }

    return "$_generatedHeader\n\nexport '${libraries[Target.vm]}' if (dart.library.js) '${libraries[Target.js]}';";
  }

  List<WorkerImpl> _generateWorkerImpls(
    ClassElement workerEl,
    ClassElement messageTypeEl,
    ClassElement? resultTypeEl,
    String jsEntrypoint,
    List<String> fallbackUrls,
  ) {
    final vmClass = VmGenerator(
      workerEl,
      messageTypeEl,
      resultTypeEl,
    ).generate();
    final jsClass = JsGenerator(
      workerEl,
      messageTypeEl,
      resultTypeEl,
      jsEntrypoint,
      fallbackUrls,
    ).generate();

    return [
      WorkerImpl(
          Target.vm, formatter.format('${vmClass.accept(createEmitter())}')),
      WorkerImpl(
          Target.js, formatter.format('${jsClass.accept(createEmitter())}')),
    ];
  }
}
