// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.target_group; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'target_group.g.dart';

/// Describes a load balancer target group.
abstract class TargetGroup
    with _i1.AWSEquatable<TargetGroup>
    implements Built<TargetGroup, TargetGroupBuilder> {
  /// Describes a load balancer target group.
  factory TargetGroup({String? arn}) {
    return _$TargetGroup._(arn: arn);
  }

  /// Describes a load balancer target group.
  factory TargetGroup.build([void Function(TargetGroupBuilder) updates]) =
      _$TargetGroup;

  const TargetGroup._();

  static const List<_i2.SmithySerializer<TargetGroup>> serializers = [
    TargetGroupEc2QuerySerializer()
  ];

  /// The Amazon Resource Name (ARN) of the target group.
  String? get arn;
  @override
  List<Object?> get props => [arn];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TargetGroup')
      ..add(
        'arn',
        arn,
      );
    return helper.toString();
  }
}

class TargetGroupEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<TargetGroup> {
  const TargetGroupEc2QuerySerializer() : super('TargetGroup');

  @override
  Iterable<Type> get types => const [
        TargetGroup,
        _$TargetGroup,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  TargetGroup deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TargetGroupBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'arn':
          result.arn = (serializers.deserialize(
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
    TargetGroup object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'TargetGroupResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final TargetGroup(:arn) = object;
    if (arn != null) {
      result$
        ..add(const _i2.XmlElementName('Arn'))
        ..add(serializers.serialize(
          arn,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
