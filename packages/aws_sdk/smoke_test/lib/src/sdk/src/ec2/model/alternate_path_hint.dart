// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.alternate_path_hint; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'alternate_path_hint.g.dart';

/// Describes an potential intermediate component of a feasible path.
abstract class AlternatePathHint
    with _i1.AWSEquatable<AlternatePathHint>
    implements Built<AlternatePathHint, AlternatePathHintBuilder> {
  /// Describes an potential intermediate component of a feasible path.
  factory AlternatePathHint({
    String? componentId,
    String? componentArn,
  }) {
    return _$AlternatePathHint._(
      componentId: componentId,
      componentArn: componentArn,
    );
  }

  /// Describes an potential intermediate component of a feasible path.
  factory AlternatePathHint.build(
      [void Function(AlternatePathHintBuilder) updates]) = _$AlternatePathHint;

  const AlternatePathHint._();

  static const List<_i2.SmithySerializer<AlternatePathHint>> serializers = [
    AlternatePathHintEc2QuerySerializer()
  ];

  /// The ID of the component.
  String? get componentId;

  /// The Amazon Resource Name (ARN) of the component.
  String? get componentArn;
  @override
  List<Object?> get props => [
        componentId,
        componentArn,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AlternatePathHint')
      ..add(
        'componentId',
        componentId,
      )
      ..add(
        'componentArn',
        componentArn,
      );
    return helper.toString();
  }
}

class AlternatePathHintEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<AlternatePathHint> {
  const AlternatePathHintEc2QuerySerializer() : super('AlternatePathHint');

  @override
  Iterable<Type> get types => const [
        AlternatePathHint,
        _$AlternatePathHint,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AlternatePathHint deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AlternatePathHintBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'componentId':
          result.componentId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'componentArn':
          result.componentArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    AlternatePathHint object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'AlternatePathHintResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final AlternatePathHint(:componentId, :componentArn) = object;
    if (componentId != null) {
      result$
        ..add(const _i2.XmlElementName('ComponentId'))
        ..add(serializers.serialize(
          componentId,
          specifiedType: const FullType(String),
        ));
    }
    if (componentArn != null) {
      result$
        ..add(const _i2.XmlElementName('ComponentArn'))
        ..add(serializers.serialize(
          componentArn,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
