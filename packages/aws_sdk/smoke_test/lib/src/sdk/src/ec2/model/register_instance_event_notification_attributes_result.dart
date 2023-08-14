// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.register_instance_event_notification_attributes_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_tag_notification_attribute.dart';

part 'register_instance_event_notification_attributes_result.g.dart';

abstract class RegisterInstanceEventNotificationAttributesResult
    with
        _i1.AWSEquatable<RegisterInstanceEventNotificationAttributesResult>
    implements
        Built<RegisterInstanceEventNotificationAttributesResult,
            RegisterInstanceEventNotificationAttributesResultBuilder> {
  factory RegisterInstanceEventNotificationAttributesResult(
      {InstanceTagNotificationAttribute? instanceTagAttribute}) {
    return _$RegisterInstanceEventNotificationAttributesResult._(
        instanceTagAttribute: instanceTagAttribute);
  }

  factory RegisterInstanceEventNotificationAttributesResult.build(
      [void Function(RegisterInstanceEventNotificationAttributesResultBuilder)
          updates]) = _$RegisterInstanceEventNotificationAttributesResult;

  const RegisterInstanceEventNotificationAttributesResult._();

  /// Constructs a [RegisterInstanceEventNotificationAttributesResult] from a [payload] and [response].
  factory RegisterInstanceEventNotificationAttributesResult.fromResponse(
    RegisterInstanceEventNotificationAttributesResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
      _i2.SmithySerializer<
          RegisterInstanceEventNotificationAttributesResult>> serializers = [
    RegisterInstanceEventNotificationAttributesResultEc2QuerySerializer()
  ];

  /// The resulting set of tag keys.
  InstanceTagNotificationAttribute? get instanceTagAttribute;
  @override
  List<Object?> get props => [instanceTagAttribute];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'RegisterInstanceEventNotificationAttributesResult')
      ..add(
        'instanceTagAttribute',
        instanceTagAttribute,
      );
    return helper.toString();
  }
}

class RegisterInstanceEventNotificationAttributesResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<
        RegisterInstanceEventNotificationAttributesResult> {
  const RegisterInstanceEventNotificationAttributesResultEc2QuerySerializer()
      : super('RegisterInstanceEventNotificationAttributesResult');

  @override
  Iterable<Type> get types => const [
        RegisterInstanceEventNotificationAttributesResult,
        _$RegisterInstanceEventNotificationAttributesResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  RegisterInstanceEventNotificationAttributesResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RegisterInstanceEventNotificationAttributesResultBuilder();
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
    RegisterInstanceEventNotificationAttributesResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'RegisterInstanceEventNotificationAttributesResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final RegisterInstanceEventNotificationAttributesResult(
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
