// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_instance_event_notification_attributes_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_tag_notification_attribute.dart';

part 'describe_instance_event_notification_attributes_result.g.dart';

abstract class DescribeInstanceEventNotificationAttributesResult
    with
        _i1.AWSEquatable<DescribeInstanceEventNotificationAttributesResult>
    implements
        Built<DescribeInstanceEventNotificationAttributesResult,
            DescribeInstanceEventNotificationAttributesResultBuilder> {
  factory DescribeInstanceEventNotificationAttributesResult(
      {InstanceTagNotificationAttribute? instanceTagAttribute}) {
    return _$DescribeInstanceEventNotificationAttributesResult._(
        instanceTagAttribute: instanceTagAttribute);
  }

  factory DescribeInstanceEventNotificationAttributesResult.build(
      [void Function(DescribeInstanceEventNotificationAttributesResultBuilder)
          updates]) = _$DescribeInstanceEventNotificationAttributesResult;

  const DescribeInstanceEventNotificationAttributesResult._();

  /// Constructs a [DescribeInstanceEventNotificationAttributesResult] from a [payload] and [response].
  factory DescribeInstanceEventNotificationAttributesResult.fromResponse(
    DescribeInstanceEventNotificationAttributesResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
          _i2
          .SmithySerializer<DescribeInstanceEventNotificationAttributesResult>>
      serializers = [
    DescribeInstanceEventNotificationAttributesResultEc2QuerySerializer()
  ];

  /// Information about the registered tag keys.
  InstanceTagNotificationAttribute? get instanceTagAttribute;
  @override
  List<Object?> get props => [instanceTagAttribute];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DescribeInstanceEventNotificationAttributesResult')
      ..add(
        'instanceTagAttribute',
        instanceTagAttribute,
      );
    return helper.toString();
  }
}

class DescribeInstanceEventNotificationAttributesResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<
        DescribeInstanceEventNotificationAttributesResult> {
  const DescribeInstanceEventNotificationAttributesResultEc2QuerySerializer()
      : super('DescribeInstanceEventNotificationAttributesResult');

  @override
  Iterable<Type> get types => const [
        DescribeInstanceEventNotificationAttributesResult,
        _$DescribeInstanceEventNotificationAttributesResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeInstanceEventNotificationAttributesResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeInstanceEventNotificationAttributesResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'instanceTagAttribute':
          result.instanceTagAttribute.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(InstanceTagNotificationAttribute),
          ) as InstanceTagNotificationAttribute));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeInstanceEventNotificationAttributesResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'DescribeInstanceEventNotificationAttributesResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeInstanceEventNotificationAttributesResult(
      :instanceTagAttribute
    ) = object;
    if (instanceTagAttribute != null) {
      result$
        ..add(const _i2.XmlElementName('InstanceTagAttribute'))
        ..add(serializers.serialize(
          instanceTagAttribute,
          specifiedType: const FullType(InstanceTagNotificationAttribute),
        ));
    }
    return result$;
  }
}
