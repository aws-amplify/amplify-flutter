// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.delete_virtual_mfa_device_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_virtual_mfa_device_request.g.dart';

abstract class DeleteVirtualMfaDeviceRequest
    with
        _i1.HttpInput<DeleteVirtualMfaDeviceRequest>,
        _i2.AWSEquatable<DeleteVirtualMfaDeviceRequest>
    implements
        Built<DeleteVirtualMfaDeviceRequest,
            DeleteVirtualMfaDeviceRequestBuilder> {
  factory DeleteVirtualMfaDeviceRequest({required String serialNumber}) {
    return _$DeleteVirtualMfaDeviceRequest._(serialNumber: serialNumber);
  }

  factory DeleteVirtualMfaDeviceRequest.build(
          [void Function(DeleteVirtualMfaDeviceRequestBuilder) updates]) =
      _$DeleteVirtualMfaDeviceRequest;

  const DeleteVirtualMfaDeviceRequest._();

  factory DeleteVirtualMfaDeviceRequest.fromRequest(
    DeleteVirtualMfaDeviceRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DeleteVirtualMfaDeviceRequest>>
      serializers = [DeleteVirtualMfaDeviceRequestAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteVirtualMfaDeviceRequestBuilder b) {}

  /// The serial number that uniquely identifies the MFA device. For virtual MFA devices, the serial number is the same as the ARN.
  ///
  /// This parameter allows (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@:/-
  String get serialNumber;
  @override
  DeleteVirtualMfaDeviceRequest getPayload() => this;
  @override
  List<Object?> get props => [serialNumber];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteVirtualMfaDeviceRequest')
      ..add(
        'serialNumber',
        serialNumber,
      );
    return helper.toString();
  }
}

class DeleteVirtualMfaDeviceRequestAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<DeleteVirtualMfaDeviceRequest> {
  const DeleteVirtualMfaDeviceRequestAwsQuerySerializer()
      : super('DeleteVirtualMfaDeviceRequest');

  @override
  Iterable<Type> get types => const [
        DeleteVirtualMfaDeviceRequest,
        _$DeleteVirtualMfaDeviceRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  DeleteVirtualMfaDeviceRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteVirtualMfaDeviceRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'SerialNumber':
          result.serialNumber = (serializers.deserialize(
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
    DeleteVirtualMfaDeviceRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DeleteVirtualMfaDeviceRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final DeleteVirtualMfaDeviceRequest(:serialNumber) = object;
    result$
      ..add(const _i1.XmlElementName('SerialNumber'))
      ..add(serializers.serialize(
        serialNumber,
        specifiedType: const FullType(String),
      ));
    return result$;
  }
}
