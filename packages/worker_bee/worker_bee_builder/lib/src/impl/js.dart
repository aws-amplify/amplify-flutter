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

import 'package:code_builder/code_builder.dart';
import 'package:worker_bee_builder/src/impl/common.dart';
import 'package:worker_bee_builder/src/types.dart';

/// {@template worker_bee_builder.vm_generator}
/// Generates the JS implementation of a worker bee.
/// {@endtemplate}
class JsGenerator extends ImplGenerator {
  /// {@macro worker_bee_builder.vm_generator}
  JsGenerator(
    super.classEl,
    super.requestTypeEl,
    super.responseTypeEl,
    this.entrypoint,
    this.fallbackUrls,
  );

  /// The `.js` entrypoint to the compiled worker bee.
  final String entrypoint;

  /// A list of fallback URLs to try if [entrypoint] fails.
  final List<String> fallbackUrls;

  @override
  Library generate() {
    return Library(
      (b) => b
        ..body.addAll([
          _workerClass,
        ]),
    );
  }

  Class get _workerClass => Class(
        (c) => c
          ..name = workerImplName
          ..docs.add('/// The JS implementation of [${workerType.symbol}].')
          ..extend = workerType
          ..methods.addAll([
            Method((m) => m
              ..annotations.add(DartTypes.core.override)
              ..returns = DartTypes.core.string
              ..type = MethodType.getter
              ..name = 'name'
              ..body = literalString(workerName).code),
            Method((m) => m
              ..annotations.add(DartTypes.core.override)
              ..returns = DartTypes.core.string
              ..type = MethodType.getter
              ..name = 'jsEntrypoint'
              ..body = literalString(entrypoint).code),
            Method((m) => m
              ..annotations.add(DartTypes.core.override)
              ..returns = DartTypes.core.list(DartTypes.core.string)
              ..type = MethodType.getter
              ..name = 'fallbackUrls'
              ..body = literalConstList(fallbackUrls).code),
          ]),
      );
}
