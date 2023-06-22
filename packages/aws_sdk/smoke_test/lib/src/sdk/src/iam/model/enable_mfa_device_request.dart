// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.enable_mfa_device_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'enable_mfa_device_request.g.dart';

abstract class EnableMfaDeviceRequest
    with
        _i1.HttpInput<EnableMfaDeviceRequest>,
        _i2.AWSEquatable<EnableMfaDeviceRequest>
    implements Built<EnableMfaDeviceRequest, EnableMfaDeviceRequestBuilder> {
  factory EnableMfaDeviceRequest({
    required String userName,
    required String serialNumber,
    required String authenticationCode1,
    required String authenticationCode2,
  }) {
    return _$EnableMfaDeviceRequest._(
      userName: userName,
      serialNumber: serialNumber,
      authenticationCode1: authenticationCode1,
      authenticationCode2: authenticationCode2,
    );
  }

  factory EnableMfaDeviceRequest.build(
          [void Function(EnableMfaDeviceRequestBuilder) updates]) =
      _$EnableMfaDeviceRequest;

  const EnableMfaDeviceRequest._();

  factory EnableMfaDeviceRequest.fromRequest(
    EnableMfaDeviceRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<EnableMfaDeviceRequest>> serializers =
      [EnableMfaDeviceRequestAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(EnableMfaDeviceRequestBuilder b) {}

  /// The name of the IAM user for whom you want to enable the MFA device.
  ///
  /// This parameter allows (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
  String get userName;

  /// The serial number that uniquely identifies the MFA device. For virtual MFA devices, the serial number is the device ARN.
  ///
  /// This parameter allows (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@:/-
  String get serialNumber;

  /// An authentication code emitted by the device.
  ///
  /// The format for this parameter is a string of six digits.
  ///
  /// Submit your request immediately after generating the authentication codes. If you generate the codes and then wait too long to submit the request, the MFA device successfully associates with the user but the MFA device becomes out of sync. This happens because time-based one-time passwords (TOTP) expire after a short period of time. If this happens, you can [resync the device](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_mfa_sync.html).
  String get authenticationCode1;

  /// A subsequent authentication code emitted by the device.
  ///
  /// The format for this parameter is a string of six digits.
  ///
  /// Submit your request immediately after generating the authentication codes. If you generate the codes and then wait too long to submit the request, the MFA device successfully associates with the user but the MFA device becomes out of sync. This happens because time-based one-time passwords (TOTP) expire after a short period of time. If this happens, you can [resync the device](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_mfa_sync.html).
  String get authenticationCode2;
  @override
  EnableMfaDeviceRequest getPayload() => this;
  @override
  List<Object?> get props => [
        userName,
        serialNumber,
        authenticationCode1,
        authenticationCode2,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('EnableMfaDeviceRequest')
      ..add(
        'userName',
        userName,
      )
      ..add(
        'serialNumber',
        serialNumber,
      )
      ..add(
        'authenticationCode1',
        authenticationCode1,
      )
      ..add(
        'authenticationCode2',
        authenticationCode2,
      );
    return helper.toString();
  }
}

class EnableMfaDeviceRequestAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<EnableMfaDeviceRequest> {
  const EnableMfaDeviceRequestAwsQuerySerializer()
      : super('EnableMfaDeviceRequest');

  @override
  Iterable<Type> get types => const [
        EnableMfaDeviceRequest,
        _$EnableMfaDeviceRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  EnableMfaDeviceRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EnableMfaDeviceRequestBuilder();
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
        case 'AuthenticationCode1':
          result.authenticationCode1 = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'AuthenticationCode2':
          result.authenticationCode2 = (serializers.deserialize(
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
    EnableMfaDeviceRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'EnableMfaDeviceRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final EnableMfaDeviceRequest(
      :userName,
      :serialNumber,
      :authenticationCode1,
      :authenticationCode2
    ) = object;
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
    result$
      ..add(const _i1.XmlElementName('AuthenticationCode1'))
      ..add(serializers.serialize(
        authenticationCode1,
        specifiedType: const FullType(String),
      ));
    result$
      ..add(const _i1.XmlElementName('AuthenticationCode2'))
      ..add(serializers.serialize(
        authenticationCode2,
        specifiedType: const FullType(String),
      ));
    return result$;
  }
}
