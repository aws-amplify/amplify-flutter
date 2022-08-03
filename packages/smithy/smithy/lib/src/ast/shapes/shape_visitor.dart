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

/// Visits shapes.
abstract class ShapeVisitor<R> {
  R blobShape(BlobShape shape, [Shape? parent]);

  R booleanShape(BooleanShape shape, [Shape? parent]);

  R primitiveBooleanShape(PrimitiveBooleanShape shape, [Shape? parent]);

  R listShape(ListShape shape, [Shape? parent]);

  R setShape(SetShape shape, [Shape? parent]);

  R mapShape(MapShape shape, [Shape? parent]);

  R byteShape(ByteShape shape, [Shape? parent]);

  R primitiveByteShape(PrimitiveByteShape shape, [Shape? parent]);

  R shortShape(ShortShape shape, [Shape? parent]);

  R integerShape(IntegerShape shape, [Shape? parent]);

  R longShape(LongShape shape, [Shape? parent]);

  R floatShape(FloatShape shape, [Shape? parent]);

  R primitiveShortShape(PrimitiveShortShape shape, [Shape? parent]);

  R primitiveIntegerShape(PrimitiveIntegerShape shape, [Shape? parent]);

  R primitiveLongShape(PrimitiveLongShape shape, [Shape? parent]);

  R primitiveFloatShape(PrimitiveFloatShape shape, [Shape? parent]);

  R documentShape(DocumentShape shape, [Shape? parent]);

  R doubleShape(DoubleShape shape, [Shape? parent]);

  R primitiveDoubleShape(PrimitiveDoubleShape shape, [Shape? parent]);

  R bigIntegerShape(BigIntegerShape shape, [Shape? parent]);

  R bigDecimalShape(BigDecimalShape shape, [Shape? parent]);

  R operationShape(OperationShape shape, [Shape? parent]);

  R resourceShape(ResourceShape shape, [Shape? parent]);

  R serviceShape(ServiceShape shape, [Shape? parent]);

  R stringShape(StringShape shape, [Shape? parent]);

  R structureShape(StructureShape shape, [Shape? parent]);

  R unionShape(UnionShape shape, [Shape? parent]);

  R memberShape(MemberShape shape, [Shape? parent]);

  R timestampShape(TimestampShape shape, [Shape? parent]);
}

/// Visits shapes by category.
abstract class CategoryShapeVisitor<R> implements ShapeVisitor<R> {
  const CategoryShapeVisitor();

  @override
  R bigDecimalShape(BigDecimalShape shape, [Shape? parent]) =>
      simpleShape(shape, parent);

  @override
  R bigIntegerShape(BigIntegerShape shape, [Shape? parent]) =>
      simpleShape(shape, parent);

  @override
  R blobShape(BlobShape shape, [Shape? parent]) => simpleShape(shape, parent);

  @override
  R booleanShape(BooleanShape shape, [Shape? parent]) =>
      simpleShape(shape, parent);

  @override
  R byteShape(ByteShape shape, [Shape? parent]) => simpleShape(shape, parent);

  @override
  R documentShape(DocumentShape shape, [Shape? parent]) =>
      simpleShape(shape, parent);

  @override
  R doubleShape(DoubleShape shape, [Shape? parent]) =>
      simpleShape(shape, parent);

  @override
  R floatShape(FloatShape shape, [Shape? parent]) => simpleShape(shape, parent);

  @override
  R integerShape(IntegerShape shape, [Shape? parent]) =>
      simpleShape(shape, parent);

  @override
  R longShape(LongShape shape, [Shape? parent]) => simpleShape(shape, parent);

  R simpleShape(SimpleShape shape, [Shape? parent]);

  @override
  R shortShape(ShortShape shape, [Shape? parent]) => simpleShape(shape, parent);

  @override
  R stringShape(StringShape shape, [Shape? parent]) =>
      simpleShape(shape, parent);

  @override
  R timestampShape(TimestampShape shape, [Shape? parent]) =>
      simpleShape(shape, parent);

  @override
  R primitiveBooleanShape(PrimitiveBooleanShape shape, [Shape? parent]) =>
      simpleShape(shape, parent);

  @override
  R primitiveByteShape(PrimitiveByteShape shape, [Shape? parent]) =>
      simpleShape(shape, parent);

  @override
  R primitiveDoubleShape(PrimitiveDoubleShape shape, [Shape? parent]) =>
      simpleShape(shape, parent);

  @override
  R primitiveFloatShape(PrimitiveFloatShape shape, [Shape? parent]) =>
      simpleShape(shape, parent);

  @override
  R primitiveIntegerShape(PrimitiveIntegerShape shape, [Shape? parent]) =>
      simpleShape(shape, parent);

  @override
  R primitiveLongShape(PrimitiveLongShape shape, [Shape? parent]) =>
      simpleShape(shape, parent);

  @override
  R primitiveShortShape(PrimitiveShortShape shape, [Shape? parent]) =>
      simpleShape(shape, parent);
}
