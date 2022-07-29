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

import 'package:collection/collection.dart';
import 'package:smithy/ast.dart';
import 'package:smithy_codegen/smithy_codegen.dart';

/// Adds functionality to track renaming of shapes in recursive visiting.
mixin RenameState {
  CodegenContext get context;

  final Map<ShapeId, List<String>> _states = {};

  /// Returns the current rename for [shapeId].
  String? renameFor(ShapeId shapeId) =>
      _states[shapeId]?.lastOrNull ?? context.service?.rename[shapeId];

  /// Sets the rename for [key] to [value].
  void pushState(ShapeId key, String value) {
    _states[key] ??= [];
    _states[key]!.add(value);
  }

  /// Undoes the last rename of [key].
  void popState(ShapeId key) {
    _states[key]!.removeLast();
  }

  /// Performs [fn] with [key]'s rename set to [value].
  R withState<R>(ShapeId key, String value, R Function() fn) {
    try {
      pushState(key, value);
      return fn();
    } finally {
      popState(key);
    }
  }
}
