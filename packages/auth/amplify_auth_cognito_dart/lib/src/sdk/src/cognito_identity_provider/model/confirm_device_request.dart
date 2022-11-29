// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library amplify_auth_cognito_dart.cognito_identity_provider.model.confirm_device_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/device_secret_verifier_config_type.dart'
    as _i3;
import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'confirm_device_request.g.dart';

/// Confirms the device request.
abstract class ConfirmDeviceRequest
    with
        _i1.HttpInput<ConfirmDeviceRequest>,
        _i2.AWSEquatable<ConfirmDeviceRequest>
    implements Built<ConfirmDeviceRequest, ConfirmDeviceRequestBuilder> {
  /// Confirms the device request.
  factory ConfirmDeviceRequest({
    required String accessToken,
    required String deviceKey,
    String? deviceName,
    _i3.DeviceSecretVerifierConfigType? deviceSecretVerifierConfig,
  }) {
    return _$ConfirmDeviceRequest._(
      accessToken: accessToken,
      deviceKey: deviceKey,
      deviceName: deviceName,
      deviceSecretVerifierConfig: deviceSecretVerifierConfig,
    );
  }

  /// Confirms the device request.
  factory ConfirmDeviceRequest.build(
          [void Function(ConfirmDeviceRequestBuilder) updates]) =
      _$ConfirmDeviceRequest;

  const ConfirmDeviceRequest._();

  factory ConfirmDeviceRequest.fromRequest(
    ConfirmDeviceRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    ConfirmDeviceRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ConfirmDeviceRequestBuilder b) {}

  /// A valid access token that Amazon Cognito issued to the user whose device you want to confirm.
  String get accessToken;

  /// The device key.
  String get deviceKey;

  /// The device name.
  String? get deviceName;

  /// The configuration of the device secret verifier.
  _i3.DeviceSecretVerifierConfigType? get deviceSecretVerifierConfig;
  @override
  ConfirmDeviceRequest getPayload() => this;
  @override
  List<Object?> get props => [
        accessToken,
        deviceKey,
        deviceName,
        deviceSecretVerifierConfig,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ConfirmDeviceRequest');
    helper.add(
      'accessToken',
      '***SENSITIVE***',
    );
    helper.add(
      'deviceKey',
      deviceKey,
    );
    helper.add(
      'deviceName',
      deviceName,
    );
    helper.add(
      'deviceSecretVerifierConfig',
      deviceSecretVerifierConfig,
    );
    return helper.toString();
  }
}

class ConfirmDeviceRequestAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<ConfirmDeviceRequest> {
  const ConfirmDeviceRequestAwsJson11Serializer()
      : super('ConfirmDeviceRequest');

  @override
  Iterable<Type> get types => const [
        ConfirmDeviceRequest,
        _$ConfirmDeviceRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  ConfirmDeviceRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConfirmDeviceRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'AccessToken':
          result.accessToken = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'DeviceKey':
          result.deviceKey = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'DeviceName':
          if (value != null) {
            result.deviceName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'DeviceSecretVerifierConfig':
          if (value != null) {
            result.deviceSecretVerifierConfig.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.DeviceSecretVerifierConfigType),
            ) as _i3.DeviceSecretVerifierConfigType));
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as ConfirmDeviceRequest);
    final result = <Object?>[
      'AccessToken',
      serializers.serialize(
        payload.accessToken,
        specifiedType: const FullType(String),
      ),
      'DeviceKey',
      serializers.serialize(
        payload.deviceKey,
        specifiedType: const FullType(String),
      ),
    ];
    if (payload.deviceName != null) {
      result
        ..add('DeviceName')
        ..add(serializers.serialize(
          payload.deviceName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.deviceSecretVerifierConfig != null) {
      result
        ..add('DeviceSecretVerifierConfig')
        ..add(serializers.serialize(
          payload.deviceSecretVerifierConfig!,
          specifiedType: const FullType(_i3.DeviceSecretVerifierConfigType),
        ));
    }
    return result;
  }
}
