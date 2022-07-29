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

import 'package:smithy/ast.dart';

extension ShapeExt on Shape {
  /// Returns the trait of type [T], if it exists on the shape.
  T? getTrait<T extends Trait>() => traits.getTrait<T>();

  /// Whether the shape has a trait of type [T].
  bool hasTrait<T extends Trait>() => traits.hasTrait<T>();

  /// Gets the trait of type [T] from the shape or throws if not found.
  T expectTrait<T extends Trait>() => traits.expectTrait<T>();

  /// Whether the same has a default value.
  ///
  /// Shapes which have default values are only considered boxed when
  /// explicitly marked with the boxed trait.
  bool get hasDefaultValue {
    switch (getType()) {
      case ShapeType.boolean:
      case ShapeType.byte:
      case ShapeType.short:
      case ShapeType.integer:
      case ShapeType.long:
      case ShapeType.float:
      case ShapeType.double:
        return true;
      default:
        return false;
    }
  }

  /// Whether `this` is boxed. This means the shape is optionally present and
  /// has no default value.
  bool get isBoxed => hasTrait<BoxTrait>();

  /// Whether `this` is not boxed. This means the shape is required to be present
  /// with a value.
  bool get isNotBoxed => !isBoxed;

  /// Whether `this` is an enum.
  bool get isEnum => this is StringShape && hasTrait<EnumTrait>();

  /// Whether `this` is an idempotency token.
  bool get isIdempotencyToken => hasTrait<IdempotencyTokenTrait>();

  /// Whether `this` has the `@sparse` trait.
  bool get isSparse => hasTrait<SparseTrait>();

  /// Whether `this` has the `@streaming` trait.
  bool get isStreaming => hasTrait<StreamingTrait>();

  /// Whether `this` has the `@required` trait.
  bool get isRequired => hasTrait<RequiredTrait>();

  /// Whether `this` does not have the `@required` trait.
  bool get isNotRequired => !isRequired;

  /// The custom timestamp format specified by this shape, if any.
  TimestampFormat? get timestampFormat =>
      getTrait<TimestampFormatTrait>()?.format;

  /// Whether `this` has the `@error` trait.
  bool get isError => hasTrait<ErrorTrait>();

  /// Whether `this` has the `@httpError` trait.
  bool get isHttpError => hasTrait<HttpErrorTrait>();

  /// Whether `this` has the `@unstable` trait.
  bool get isUnstable => hasTrait<UnstableTrait>();
}

extension StructureShapeExt on StructureShape {
  /// Whether this is an input to an operation.
  bool get isInputShape => hasTrait<InputTrait>();

  /// Whether this is an output to an operation.
  bool get isOutputShape => hasTrait<OutputTrait>();
}
