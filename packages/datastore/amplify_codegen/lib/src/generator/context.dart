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

import 'package:amplify_core/src/types/models/mipr.dart';

/// The current code generation context.
CodegenContext get context => Zone.current[#_context] as CodegenContext;

/// Runs [fn] with the code generation [context].
T runWithContext<T>(CodegenContext context, T Function() fn) => runZoned(
      fn,
      zoneValues: {#_context: context},
    );

/// {@template amplify_codegen.codegen_context}
/// Helpers for the schema being generated.
/// {@endtemplate}
class CodegenContext {
  /// {@macro amplify_codegen.codegen_context}
  CodegenContext(this._schema);

  final SchemaDefinition _schema;

  /// The directed graph of models to those
  late final modelGraph = _schema.modelGraph.asMap().map((modelName, models) {
    final model = modelNamed(modelName);
    final relatedModels = models.map(modelNamed).toList();
    return MapEntry(model, relatedModels);
  });

  /// Performs a depth-first search on the model graph invoking [visit] for
  /// every node.
  ///
  /// If [root] is specified, the search is started there.
  void visit(
    void Function(SchemaTypeDefinition) visit, {
    SchemaTypeDefinition? root,
  }) {
    final visited = <SchemaTypeDefinition>{};
    void search(SchemaTypeDefinition node, List<SchemaTypeDefinition> edges) {
      visit(node);
      visited.add(node);
      for (final edge in edges) {
        if (!visited.contains(edge)) {
          search(edge, modelGraph[edge]!);
        }
      }
    }

    if (root != null) {
      assert(
        modelGraph.containsKey(root),
        '${root.name} is not in the model graph',
      );
      search(root, modelGraph[root]!);
    } else {
      modelGraph.forEach(search);
    }
  }

  /// Retrieves the definition for the model named [schemaName].
  ModelTypeDefinition modelNamed(String schemaName) =>
      _schema.typeDefinitions[schemaName] as ModelTypeDefinition;

  /// Retrieves the definition for the type named [schemaName].
  SchemaTypeDefinition typeNamed(String schemaName) =>
      _schema.typeDefinitions[schemaName] as SchemaTypeDefinition;
}
