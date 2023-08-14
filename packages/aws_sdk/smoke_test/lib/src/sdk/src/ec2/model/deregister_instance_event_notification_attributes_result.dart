// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.deregister_instance_event_notification_attributes_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_tag_notification_attribute.dart';

part 'deregister_instance_event_notification_attributes_result.g.dart';

abstract class DeregisterInstanceEventNotificationAttributesResult
    with
        _i1.AWSEquatable<DeregisterInstanceEventNotificationAttributesResult>
    implements
        Built<DeregisterInstanceEventNotificationAttributesResult,
            DeregisterInstanceEventNotificationAttributesResultBuilder> {
  factory DeregisterInstanceEventNotificationAttributesResult(
      {InstanceTagNotificationAttribute? instanceTagAttribute}) {
    return _$DeregisterInstanceEventNotificationAttributesResult._(
        instanceTagAttribute: instanceTagAttribute);
  }

  factory DeregisterInstanceEventNotificationAttributesResult.build(
      [void Function(DeregisterInstanceEventNotificationAttributesResultBuilder)
          updates]) = _$DeregisterInstanceEventNotificationAttributesResult;

  const DeregisterInstanceEventNotificationAttributesResult._();

  /// Constructs a [DeregisterInstanceEventNotificationAttributesResult] from a [payload] and [response].
  factory DeregisterInstanceEventNotificationAttributesResult.fromResponse(
    DeregisterInstanceEventNotificationAttributesResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
      _i2.SmithySerializer<
          DeregisterInstanceEventNotificationAttributesResult>> serializers = [
    DeregisterInstanceEventNotificationAttributesResultEc2QuerySerializer()
  ];

  /// The resulting set of tag keys.
  InstanceTagNotificationAttribute? get instanceTagAttribute;
  @override
  List<Object?> get props => [instanceTagAttribute];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DeregisterInstanceEventNotificationAttributesResult')
      ..add(
        'instanceTagAttribute',
        instanceTagAttribute,
      );
    return helper.toString();
  }
}

class DeregisterInstanceEventNotificationAttributesResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<
        DeregisterInstanceEventNotificationAttributesResult> {
  const DeregisterInstanceEventNotificationAttributesResultEc2QuerySerializer()
      : super('DeregisterInstanceEventNotificationAttributesResult');

  @override
  Iterable<Type> get types => const [
        DeregisterInstanceEventNotificationAttributesResult,
        _$DeregisterInstanceEventNotificationAttributesResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeregisterInstanceEventNotificationAttributesResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeregisterInstanceEventNotificationAttributesResultBuilder();
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
    DeregisterInstanceEventNotificationAttributesResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'DeregisterInstanceEventNotificationAttributesResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DeregisterInstanceEventNotificationAttributesResult(
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
