// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.position; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'position.g.dart';

/// Contains the row and column of a location of a `Statement` element in a policy document.
///
/// This data type is used as a member of the `Statement` type.
abstract class Position
    with _i1.AWSEquatable<Position>
    implements Built<Position, PositionBuilder> {
  /// Contains the row and column of a location of a `Statement` element in a policy document.
  ///
  /// This data type is used as a member of the `Statement` type.
  factory Position({
    int? line,
    int? column,
  }) {
    line ??= 0;
    column ??= 0;
    return _$Position._(
      line: line,
      column: column,
    );
  }

  /// Contains the row and column of a location of a `Statement` element in a policy document.
  ///
  /// This data type is used as a member of the `Statement` type.
  factory Position.build([void Function(PositionBuilder) updates]) = _$Position;

  const Position._();

  static const List<_i2.SmithySerializer<Position>> serializers = [
    PositionAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PositionBuilder b) {
    b.line = 0;
    b.column = 0;
  }

  /// The line containing the specified position in the document.
  int get line;

  /// The column in the line containing the specified position in the document.
  int get column;
  @override
  List<Object?> get props => [
        line,
        column,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Position')
      ..add(
        'line',
        line,
      )
      ..add(
        'column',
        column,
      );
    return helper.toString();
  }
}

class PositionAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<Position> {
  const PositionAwsQuerySerializer() : super('Position');

  @override
  Iterable<Type> get types => const [
        Position,
        _$Position,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  Position deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PositionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Line':
          result.line = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'Column':
          result.column = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Position object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'PositionResponse',
        _i2.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final Position(:line, :column) = object;
    result$
      ..add(const _i2.XmlElementName('Line'))
      ..add(serializers.serialize(
        line,
        specifiedType: const FullType(int),
      ));
    result$
      ..add(const _i2.XmlElementName('Column'))
      ..add(serializers.serialize(
        column,
        specifiedType: const FullType(int),
      ));
    return result$;
  }
}
