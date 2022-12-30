// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:code_builder/code_builder.dart';
import 'package:smithy/ast.dart';
import 'package:smithy_codegen/smithy_codegen.dart';
import 'package:smithy_codegen/src/generator/types.dart';
import 'package:smithy_codegen/src/util/shape_ext.dart';
import 'package:smithy_codegen/src/util/symbol_ext.dart';

/// A general purpose generator.
abstract class Generator<T> {
  T generate();
}

/// A generator for [Shape] types.
abstract class ShapeGenerator<T extends Shape, U> implements Generator<U> {
  ShapeGenerator(this.shape, this.context);

  final CodegenContext context;
  final T shape;

  /// The symbol for [shape].
  late final Reference symbol = context.symbolFor(shape.shapeId);

  /// The re-cased name for the generated class.
  String get className {
    return shape.escapedClassName(context)!;
  }

  /// Creates the expression to parse [ref] into the type of [shape].
  Expression valueFromString(
    Expression ref,
    Shape shape, {
    required bool isHeader,
  }) {
    final targetShape =
        shape is MemberShape ? context.shapeFor(shape.target) : shape;

    final type = targetShape.getType();
    switch (type) {
      case ShapeType.boolean:
        return ref.equalTo(literalString('true'));

      case ShapeType.bigInteger:
        return DartTypes.core.bigInt.property('parse').call([ref]);

      case ShapeType.bigDecimal:
      case ShapeType.double:
      case ShapeType.float:
        return DartTypes.core.double.property('parse').call([ref]);

      case ShapeType.byte:
      case ShapeType.integer:
      case ShapeType.short:
        return DartTypes.core.int.property('parse').call([ref]);

      case ShapeType.long:
        return DartTypes.fixNum.int64.property('parseInt').call([ref]);

      case ShapeType.enum_:
      case ShapeType.intEnum:
        if (type == ShapeType.intEnum) {
          ref = DartTypes.core.int.property('parse').call([ref]);
        }
        final targetSymbol = context.symbolFor(targetShape.shapeId).unboxed;
        return targetSymbol.property('values').property('byValue').call([ref]);

      case ShapeType.string:
        // From the restJson1 test suite:
        // "Headers that target strings with a mediaType are base64 encoded"
        final mediaType = targetShape.getTrait<MediaTypeTrait>()?.value;
        if (mediaType == null) {
          return ref;
        }
        ref = DartTypes.convert.utf8.property('decode').call([
          DartTypes.convert.base64Decode.call([ref]),
        ]);
        switch (mediaType) {
          case 'application/json':
            ref = DartTypes.builtValue.jsonObject.newInstance([
              DartTypes.convert.jsonDecode.call([ref]),
            ]);
        }
        return ref;

      // Header values:
      // timestamp values are serialized using the http-date format by
      // default. The timestampFormat trait MAY be used to use a custom
      // serialization format.
      //
      // Other values:
      // timestamp values are serialized as an RFC 3339 date-time string by
      // default (for example, 1985-04-12T23:20:50.52Z, and with
      // percent-encoding, 1985-04-12T23%3A20%3A50.52Z). The timestampFormat
      // trait MAY be used to use a custom serialization format.
      case ShapeType.timestamp:
        final format = shape.timestampFormat ??
            targetShape.timestampFormat ??
            (isHeader ? TimestampFormat.httpDate : TimestampFormat.dateTime);
        return DartTypes.smithy.timestamp.property('parse').call([
          format == TimestampFormat.epochSeconds
              ? DartTypes.core.int.property('parse').call([ref])
              : ref
        ], {
          'format': DartTypes.smithy.timestampFormat.property(format.name),
        }).property('asDateTime');

      // When a list shape is targeted, each member of the shape is
      // serialized as a separate HTTP header either by concatenating the
      // values with a comma on a single line or by serializing each header
      // value on its own line.
      case ShapeType.list:
      case ShapeType.set:
        final memberShape = (targetShape as CollectionShape).member;
        final memberTarget = context.shapeFor(memberShape.target);
        return DartTypes.smithy.parseHeader
            .call([
              ref
            ], {
              if (memberTarget is TimestampShape)
                'isTimestampList': literalTrue,
            })
            .property('map')
            .call([
              Method((m) => m
                ..requiredParameters.add(Parameter((p) => p..name = 'el'))
                ..lambda = true
                ..body = valueFromString(
                  refer('el').property('trim').call([]),
                  memberShape,
                  isHeader: true,
                ).code).closure,
            ]);
      default:
        throw ArgumentError('Invalid header shape type: $type');
    }
  }

  /// Creates the `toString` equivalent for [shape].
  Expression valueToString(
    Expression ref,
    Shape shape, {
    required bool isHeader,
  }) {
    final targetShape =
        shape is MemberShape ? context.shapeFor(shape.target) : shape;
    final type = targetShape.getType();
    switch (type) {
      case ShapeType.boolean:
      case ShapeType.bigDecimal:
      case ShapeType.bigInteger:
      case ShapeType.byte:
      case ShapeType.double:
      case ShapeType.float:
      case ShapeType.integer:
      case ShapeType.long:
      case ShapeType.short:
        return ref.property('toString').call([]);

      case ShapeType.enum_:
        return ref.property('value');

      case ShapeType.intEnum:
        return ref.property('value').property('toString').call([]);

      // string values with a mediaType trait are always base64 encoded.
      case ShapeType.string:
        final mediaType = targetShape.getTrait<MediaTypeTrait>()?.value;
        if (mediaType != null) {
          switch (mediaType) {
            case 'application/json':
              ref = DartTypes.convert.jsonEncode.call([ref.property('value')]);
          }
          // From the restJson1 test suite:
          // "Headers that target strings with a mediaType are base64 encoded"
          if (isHeader) {
            return DartTypes.convert.base64Encode.call([
              DartTypes.convert.utf8.property('encode').call([ref]),
            ]);
          }
        }
        return ref;

      // timestamp values are serialized as an RFC 3339 string by default
      // (for example, 1985-04-12T23:20:50.52Z, and with percent-encoding,
      // 1985-04-12T23%3A20%3A50.52Z). The timestampFormat trait MAY be used
      // to use a custom serialization format.
      case ShapeType.timestamp:
        final format = shape.timestampFormat ??
            targetShape.timestampFormat ??
            (isHeader ? TimestampFormat.httpDate : TimestampFormat.dateTime);
        return DartTypes.smithy.timestamp
            .newInstance([ref])
            .property('format')
            .call([
              DartTypes.smithy.timestampFormat.property(format.name),
            ])
            .property('toString') // Since we can get a num or String back.
            .call([]);

      case ShapeType.list:
      case ShapeType.set:
        final memberShape = (targetShape as CollectionShape).member;
        final memberTarget = context.shapeFor(memberShape.target);
        final memberEl = refer('el');
        final memberToString = valueToString(
          memberEl,
          memberShape,
          isHeader: true,
        );
        var mappedRef = identical(memberEl, memberToString)
            ? ref
            : ref.property('map').call([
                Method((m) => m
                  ..requiredParameters.add(Parameter((p) => p..name = 'el'))
                  ..lambda = true
                  ..body = memberToString.code).closure,
              ]);
        if (isHeader) {
          mappedRef = mappedRef.property('map').call([
            Method((m) => m
              ..requiredParameters.add(Parameter((p) => p..name = 'el'))
              ..lambda = true
              ..body = DartTypes.smithy.sanitizeHeader.call([
                refer('el')
              ], {
                if (memberTarget is TimestampShape)
                  'isTimestampList': literalTrue,
              }).code).closure
          ]);
        }
        if (isHeader) {
          return mappedRef.property('join').call([literalString(', ')]);
        }
        return mappedRef
            .property(targetShape is SetShape ? 'toSet' : 'toList')
            .call([]);
      default:
        throw ArgumentError('Invalid label shape type: $type');
    }
  }
}

/// A generator for [Library] definitions.
abstract class LibraryGenerator<T extends Shape>
    extends ShapeGenerator<T, Library?> {
  LibraryGenerator(
    T shape, {
    required CodegenContext context,
    SmithyLibrary? smithyLibrary,
  })  : builder = LibraryBuilder()
          ..name = smithyLibrary?.libraryName ?? shape.libraryName(context),
        super(shape, context);

  final LibraryBuilder builder;
}
