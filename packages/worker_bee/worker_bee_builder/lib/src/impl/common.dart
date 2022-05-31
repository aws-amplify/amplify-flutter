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
import 'package:code_builder/code_builder.dart';
import 'package:worker_bee_builder/src/type_visitor.dart';
import 'package:worker_bee_builder/src/types.dart';

/// The platform target.
enum Target {
  /// VM (non-Web) target
  vm,

  /// Web target
  js
}

/// {@template worker_bee_builder.worker_impl}
/// A [target]-specific implementation of a worker.
/// {@endtemplate}
class WorkerImpl {
  /// {@macro worker_bee_builder.worker_impl}
  const WorkerImpl(this.target, this.impl);

  /// The [target] platform.
  final Target target;

  /// The implementation code.
  final String impl;
}

/// {@template worker_bee_builder.impl_generator}
/// Base class for Worker Bee implementation generators.
/// {@endtemplate}
abstract class ImplGenerator {
  /// {@macro worker_bee_builder.impl_generator}
  ImplGenerator(
    this.workerEl,
    this.requestEl,
    this.responseEl,
  ) {
    workerName = workerEl.name;
    workerImplName = '${workerName}Impl';
    workerType = Reference(
      workerName,
      workerEl.librarySource.uri.toString(),
    );
    _checkCtors(workerEl.constructors);

    requestType = requestEl.thisType.accept(symbolVisitor);
    responseType =
        responseEl?.thisType.accept(symbolVisitor) ?? DartTypes.core.void$;
  }

  void _checkCtors(List<ConstructorElement> ctors) {
    var hasUnnamed = false;
    var hasCreate = false;
    for (final ctor in ctors) {
      if (ctor.isDefaultConstructor) {
        hasUnnamed = true;
        continue;
      }
      if (ctor.name == 'create' && ctor.isFactory) {
        hasCreate = true;
        continue;
      }
    }

    if (!hasUnnamed || !hasCreate) {
      throw ArgumentError(
        'Constructors must follow the pattern:\n'
        '$workerName();\n'
        'factory $workerName.create() = $workerImplName;',
      );
    }
  }

  /// Common symbol visitor instance.
  static const symbolVisitor = SymbolVisitor();

  /// The class element of the user-defined worker.
  final ClassElement workerEl;

  /// The class element of the request type of the worker.
  final ClassElement requestEl;

  /// The class element of the response type of the worker, if any.
  final ClassElement? responseEl;

  /// The name of the worker class.
  late final String workerName;

  /// The name of the to-be-generated implementation class.
  late final String workerImplName;

  /// The `code_builder` type of [workerEl].
  late final Reference workerType;

  /// The `code_builder` type of [requestEl].
  late final Reference requestType;

  /// The `code_builder` type of [responseEl].
  late final Reference responseType;

  /// Generates the library representing the worker bee implementation and
  /// supporting items.
  Library generate();
}
