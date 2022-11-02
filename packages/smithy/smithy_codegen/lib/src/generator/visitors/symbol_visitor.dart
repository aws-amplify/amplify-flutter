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
import 'package:smithy/ast.dart';
import 'package:smithy_codegen/smithy_codegen.dart';
import 'package:smithy_codegen/src/generator/types.dart';
import 'package:smithy_codegen/src/util/shape_ext.dart';
import 'package:smithy_codegen/src/util/symbol_ext.dart';

/// Converts shapes into symbols or [Reference]s.
///
/// The Smithy model notes that all shapes
class SymbolVisitor extends CategoryShapeVisitor<Reference> {
  const SymbolVisitor(this.context);

  final CodegenContext context;

  @override
  Reference listShape(ListShape shape, [Shape? parent]) {
    final valueType = shape.member.accept(this, shape);
    final type = DartTypes.builtValue
        .builtList(valueType)
        .withBoxed(shape.isNullable(context, parent));
    final builder = DartTypes.builtValue.listBuilder(valueType);
    context.builderFactories[type.unboxed] = builder.property('new');
    return type;
  }

  @override
  Reference mapShape(MapShape shape, [Shape? parent]) {
    final keySymbol = context.symbolFor(shape.key.target, shape).unboxed;
    final valueShape = context.shapeFor(shape.value.target);
    final valueShapeType = valueShape.getType();

    // Ensure we add the builders for these to the context's `builderFactories`
    // since they will not be available to serializers otherwise.
    //
    // Use `BuiltSetMultimap` and `BuiltListMultimap` for Maps with collection
    // value types. This changes the signature from BuiltMap<String, List<String>>,
    // for example to BuiltListMultimap<String, String>, so we need to use
    // the value's member's symbol instead of the value's symbol.
    switch (valueShapeType) {
      case ShapeType.list:
        final valueSymbol = context.symbolFor(
            (valueShape as ListShape).member.target, valueShape);
        final type = DartTypes.builtValue
            .builtListMultimap(keySymbol, valueSymbol)
            .withBoxed(shape.isNullable(context, parent));
        final builder =
            DartTypes.builtValue.listMultimapBuilder(keySymbol, valueSymbol);
        context.builderFactories[type.unboxed] = builder.property('new');
        return type;
      case ShapeType.set:
        final valueSymbol = context
            .symbolFor((valueShape as SetShape).member.target, valueShape)
            .unboxed;
        final type = DartTypes.builtValue
            .builtSetMultimap(keySymbol, valueSymbol)
            .withBoxed(shape.isNullable(context, parent));
        final builder =
            DartTypes.builtValue.setMultimapBuilder(keySymbol, valueSymbol);
        context.builderFactories[type.unboxed] = builder.property('new');
        return type;
      default:
        break;
    }

    final valueSymbol = valueShape
        .accept(this, shape)
        .withBoxed(valueShape.isNullable(context, shape));
    final type = DartTypes.builtValue
        .builtMap(keySymbol, valueSymbol)
        .withBoxed(shape.isNullable(context, parent));
    final builder = DartTypes.builtValue.mapBuilder(keySymbol, valueSymbol);
    context.builderFactories[type.unboxed] = builder.property('new');
    return type;
  }

  @override
  Reference memberShape(MemberShape shape, [Shape? parent]) {
    return context
        .symbolFor(shape.target, parent)
        .withBoxed(shape.isNullable(context, parent));
  }

  @override
  Reference operationShape(OperationShape shape, [Shape? parent]) {
    final library = shape.smithyLibrary(context);
    return Reference(shape.dartName, library.libraryUrl);
  }

  @override
  Reference resourceShape(ResourceShape shape, [Shape? parent]) {
    throw UnimplementedError();
  }

  @override
  Reference serviceShape(ServiceShape shape, [Shape? parent]) {
    // Returns the service client's shape.
    return Reference(
      context.serviceClientName,
      context.serviceClientLibrary.libraryUrl,
    );
  }

  @override
  Reference setShape(SetShape shape, [Shape? parent]) {
    final valueType = shape.member.accept(this, shape).unboxed;
    final type = DartTypes.builtValue
        .builtSet(valueType)
        .withBoxed(shape.isNullable(context, parent));
    final builder = DartTypes.builtValue.setBuilder(valueType);
    context.builderFactories[type.unboxed] = builder.property('new');
    return type;
  }

  @override
  Reference stringShape(StringShape shape, [Shape? parent]) {
    final mediaType = shape.getTrait<MediaTypeTrait>()?.value;
    if (mediaType != null) {
      switch (mediaType) {
        case 'application/json':
          return DartTypes.builtValue.jsonObject
              .withBoxed(shape.isNullable(context, parent));
      }
    }
    return super.stringShape(shape);
  }

  @override
  Reference structureShape(StructureShape shape, [Shape? parent]) {
    if (shape.hasTrait<UnitTypeTrait>()) {
      return DartTypes.smithy.unit;
    }
    return createSymbol(shape);
  }

  @override
  Reference unionShape(UnionShape shape, [Shape? parent]) {
    return createSymbol(shape);
  }

  /// Creates a new symbol from shape, with its own definition file.
  Reference createSymbol(Shape shape) {
    return TypeReference(
      (t) => t
        ..symbol = shape.escapedClassName(context)!
        ..url = shape.libraryUrl(context),
    );
  }

  @override
  Reference simpleShape(SimpleShape shape, [Shape? parent]) {
    return shape.typeReference.withBoxed(shape.isNullable(context, parent));
  }

  @override
  Reference enumShape(EnumShape shape, [Shape? parent]) {
    return createSymbol(shape).withBoxed(shape.isNullable(context, parent));
  }
}
