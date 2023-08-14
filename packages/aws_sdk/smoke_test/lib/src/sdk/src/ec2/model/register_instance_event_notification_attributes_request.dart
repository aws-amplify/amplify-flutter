// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.register_instance_event_notification_attributes_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/register_instance_tag_attribute_request.dart';

part 'register_instance_event_notification_attributes_request.g.dart';

abstract class RegisterInstanceEventNotificationAttributesRequest
    with
        _i1.HttpInput<RegisterInstanceEventNotificationAttributesRequest>,
        _i2.AWSEquatable<RegisterInstanceEventNotificationAttributesRequest>
    implements
        Built<RegisterInstanceEventNotificationAttributesRequest,
            RegisterInstanceEventNotificationAttributesRequestBuilder> {
  factory RegisterInstanceEventNotificationAttributesRequest({
    bool? dryRun,
    RegisterInstanceTagAttributeRequest? instanceTagAttribute,
  }) {
    dryRun ??= false;
    return _$RegisterInstanceEventNotificationAttributesRequest._(
      dryRun: dryRun,
      instanceTagAttribute: instanceTagAttribute,
    );
  }

  factory RegisterInstanceEventNotificationAttributesRequest.build(
      [void Function(RegisterInstanceEventNotificationAttributesRequestBuilder)
          updates]) = _$RegisterInstanceEventNotificationAttributesRequest;

  const RegisterInstanceEventNotificationAttributesRequest._();

  factory RegisterInstanceEventNotificationAttributesRequest.fromRequest(
    RegisterInstanceEventNotificationAttributesRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
      _i1.SmithySerializer<
          RegisterInstanceEventNotificationAttributesRequest>> serializers = [
    RegisterInstanceEventNotificationAttributesRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      RegisterInstanceEventNotificationAttributesRequestBuilder b) {
    b.dryRun = false;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// Information about the tag keys to register.
  RegisterInstanceTagAttributeRequest? get instanceTagAttribute;
  @override
  RegisterInstanceEventNotificationAttributesRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        instanceTagAttribute,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'RegisterInstanceEventNotificationAttributesRequest')
      ..add(
        'dryRun',
        dryRun,
      )
      ..add(
        'instanceTagAttribute',
        instanceTagAttribute,
      );
    return helper.toString();
  }
}

class RegisterInstanceEventNotificationAttributesRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<
        RegisterInstanceEventNotificationAttributesRequest> {
  const RegisterInstanceEventNotificationAttributesRequestEc2QuerySerializer()
      : super('RegisterInstanceEventNotificationAttributesRequest');

  @override
  Iterable<Type> get types => const [
        RegisterInstanceEventNotificationAttributesRequest,
        _$RegisterInstanceEventNotificationAttributesRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  RegisterInstanceEventNotificationAttributesRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RegisterInstanceEventNotificationAttributesRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'InstanceTagAttribute':
          result.instanceTagAttribute.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(RegisterInstanceTagAttributeRequest),
          ) as RegisterInstanceTagAttributeRequest));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    RegisterInstanceEventNotificationAttributesRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'RegisterInstanceEventNotificationAttributesRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final RegisterInstanceEventNotificationAttributesRequest(
      :dryRun,
      :instanceTagAttribute
    ) = object;
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (instanceTagAttribute != null) {
      result$
        ..add(const _i1.XmlElementName('InstanceTagAttribute'))
        ..add(serializers.serialize(
          instanceTagAttribute,
          specifiedType: const FullType(RegisterInstanceTagAttributeRequest),
        ));
    }
    return result$;
  }
}
