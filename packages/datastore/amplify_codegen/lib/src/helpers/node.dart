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

import 'package:gql/ast.dart';

/// Helpers for [ValueNode].
extension ValueHelpers on ValueNode {
  /// The string value of `this`.
  ///
  /// Throws [ArgumentError] if `this` does not have a string representation.
  String get stringValue {
    if (this is EnumValueNode) {
      return (this as EnumValueNode).name.value;
    } else if (this is StringValueNode) {
      return (this as StringValueNode).value;
    }
    throw ArgumentError(runtimeType);
  }

  /// The string list value of `this`.
  ///
  /// Throws [ArgumentError] if `this` is not a list.
  List<String> get stringListValue {
    if (this is! ListValueNode) {
      throw ArgumentError(runtimeType);
    }
    return (this as ListValueNode)
        .values
        .map((node) => node.stringValue)
        .toList();
  }
}
