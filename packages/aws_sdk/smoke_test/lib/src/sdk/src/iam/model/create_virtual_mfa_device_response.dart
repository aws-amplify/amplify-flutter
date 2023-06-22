// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.create_virtual_mfa_device_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/iam/model/virtual_mfa_device.dart'
    as _i2;

part 'create_virtual_mfa_device_response.g.dart';

/// Contains the response to a successful CreateVirtualMFADevice request.
abstract class CreateVirtualMfaDeviceResponse
    with
        _i1.AWSEquatable<CreateVirtualMfaDeviceResponse>
    implements
        Built<CreateVirtualMfaDeviceResponse,
            CreateVirtualMfaDeviceResponseBuilder> {
  /// Contains the response to a successful CreateVirtualMFADevice request.
  factory CreateVirtualMfaDeviceResponse(
      {required _i2.VirtualMfaDevice virtualMfaDevice}) {
    return _$CreateVirtualMfaDeviceResponse._(
        virtualMfaDevice: virtualMfaDevice);
  }

  /// Contains the response to a successful CreateVirtualMFADevice request.
  factory CreateVirtualMfaDeviceResponse.build(
          [void Function(CreateVirtualMfaDeviceResponseBuilder) updates]) =
      _$CreateVirtualMfaDeviceResponse;

  const CreateVirtualMfaDeviceResponse._();

  /// Constructs a [CreateVirtualMfaDeviceResponse] from a [payload] and [response].
  factory CreateVirtualMfaDeviceResponse.fromResponse(
    CreateVirtualMfaDeviceResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<CreateVirtualMfaDeviceResponse>>
      serializers = [CreateVirtualMfaDeviceResponseAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateVirtualMfaDeviceResponseBuilder b) {}

  /// A structure containing details about the new virtual MFA device.
  _i2.VirtualMfaDevice get virtualMfaDevice;
  @override
  List<Object?> get props => [virtualMfaDevice];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateVirtualMfaDeviceResponse')
      ..add(
        'virtualMfaDevice',
        virtualMfaDevice,
      );
    return helper.toString();
  }
}

class CreateVirtualMfaDeviceResponseAwsQuerySerializer
    extends _i3.StructuredSmithySerializer<CreateVirtualMfaDeviceResponse> {
  const CreateVirtualMfaDeviceResponseAwsQuerySerializer()
      : super('CreateVirtualMfaDeviceResponse');

  @override
  Iterable<Type> get types => const [
        CreateVirtualMfaDeviceResponse,
        _$CreateVirtualMfaDeviceResponse,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  CreateVirtualMfaDeviceResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateVirtualMfaDeviceResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'VirtualMFADevice':
          result.virtualMfaDevice.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.VirtualMfaDevice),
          ) as _i2.VirtualMfaDevice));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CreateVirtualMfaDeviceResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'CreateVirtualMfaDeviceResponseResponse',
        _i3.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final CreateVirtualMfaDeviceResponse(:virtualMfaDevice) = object;
    result$
      ..add(const _i3.XmlElementName('VirtualMFADevice'))
      ..add(serializers.serialize(
        virtualMfaDevice,
        specifiedType: const FullType(_i2.VirtualMfaDevice),
      ));
    return result$;
  }
}
