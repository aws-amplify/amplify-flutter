// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.deactivate_mfa_device_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'deactivate_mfa_device_request.g.dart';

abstract class DeactivateMfaDeviceRequest
    with
        _i1.HttpInput<DeactivateMfaDeviceRequest>,
        _i2.AWSEquatable<DeactivateMfaDeviceRequest>
    implements
        Built<DeactivateMfaDeviceRequest, DeactivateMfaDeviceRequestBuilder> {
  factory DeactivateMfaDeviceRequest({
    required String userName,
    required String serialNumber,
  }) {
    return _$DeactivateMfaDeviceRequest._(
      userName: userName,
      serialNumber: serialNumber,
    );
  }

  factory DeactivateMfaDeviceRequest.build(
          [void Function(DeactivateMfaDeviceRequestBuilder) updates]) =
      _$DeactivateMfaDeviceRequest;

  const DeactivateMfaDeviceRequest._();

  factory DeactivateMfaDeviceRequest.fromRequest(
    DeactivateMfaDeviceRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DeactivateMfaDeviceRequest>>
      serializers = [DeactivateMfaDeviceRequestAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeactivateMfaDeviceRequestBuilder b) {}

  /// The name of the user whose MFA device you want to deactivate.
  ///
  /// This parameter allows (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
  String get userName;

  /// The serial number that uniquely identifies the MFA device. For virtual MFA devices, the serial number is the device ARN.
  ///
  /// This parameter allows (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@:/-
  String get serialNumber;
  @override
  DeactivateMfaDeviceRequest getPayload() => this;
  @override
  List<Object?> get props => [
        userName,
        serialNumber,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeactivateMfaDeviceRequest')
      ..add(
        'userName',
        userName,
      )
      ..add(
        'serialNumber',
        serialNumber,
      );
    return helper.toString();
  }
}

class DeactivateMfaDeviceRequestAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<DeactivateMfaDeviceRequest> {
  const DeactivateMfaDeviceRequestAwsQuerySerializer()
      : super('DeactivateMfaDeviceRequest');

  @override
  Iterable<Type> get types => const [
        DeactivateMfaDeviceRequest,
        _$DeactivateMfaDeviceRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  DeactivateMfaDeviceRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeactivateMfaDeviceRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'UserName':
          result.userName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
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
    DeactivateMfaDeviceRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DeactivateMfaDeviceRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final DeactivateMfaDeviceRequest(:userName, :serialNumber) = object;
    result$
      ..add(const _i1.XmlElementName('UserName'))
      ..add(serializers.serialize(
        userName,
        specifiedType: const FullType(String),
      ));
    result$
      ..add(const _i1.XmlElementName('SerialNumber'))
      ..add(serializers.serialize(
        serialNumber,
        specifiedType: const FullType(String),
      ));
    return result$;
  }
}
