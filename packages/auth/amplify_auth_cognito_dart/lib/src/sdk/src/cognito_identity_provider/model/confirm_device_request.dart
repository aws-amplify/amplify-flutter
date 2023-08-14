// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_auth_cognito_dart.cognito_identity_provider.model.confirm_device_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/device_secret_verifier_config_type.dart';
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
    DeviceSecretVerifierConfigType? deviceSecretVerifierConfig,
    String? deviceName,
  }) {
    return _$ConfirmDeviceRequest._(
      accessToken: accessToken,
      deviceKey: deviceKey,
      deviceSecretVerifierConfig: deviceSecretVerifierConfig,
      deviceName: deviceName,
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

  static const List<_i1.SmithySerializer<ConfirmDeviceRequest>> serializers = [
    ConfirmDeviceRequestAwsJson11Serializer()
  ];

  /// A valid access token that Amazon Cognito issued to the user whose device you want to confirm.
  String get accessToken;

  /// The device key.
  String get deviceKey;

  /// The configuration of the device secret verifier.
  DeviceSecretVerifierConfigType? get deviceSecretVerifierConfig;

  /// The device name.
  String? get deviceName;
  @override
  ConfirmDeviceRequest getPayload() => this;
  @override
  List<Object?> get props => [
        accessToken,
        deviceKey,
        deviceSecretVerifierConfig,
        deviceName,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ConfirmDeviceRequest')
      ..add(
        'accessToken',
        '***SENSITIVE***',
      )
      ..add(
        'deviceKey',
        deviceKey,
      )
      ..add(
        'deviceSecretVerifierConfig',
        deviceSecretVerifierConfig,
      )
      ..add(
        'deviceName',
        deviceName,
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
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'AccessToken':
          result.accessToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'DeviceKey':
          result.deviceKey = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'DeviceSecretVerifierConfig':
          result.deviceSecretVerifierConfig.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(DeviceSecretVerifierConfigType),
          ) as DeviceSecretVerifierConfigType));
        case 'DeviceName':
          result.deviceName = (serializers.deserialize(
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
    ConfirmDeviceRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final ConfirmDeviceRequest(
      :accessToken,
      :deviceKey,
      :deviceSecretVerifierConfig,
      :deviceName
    ) = object;
    result$.addAll([
      'AccessToken',
      serializers.serialize(
        accessToken,
        specifiedType: const FullType(String),
      ),
      'DeviceKey',
      serializers.serialize(
        deviceKey,
        specifiedType: const FullType(String),
      ),
    ]);
    if (deviceSecretVerifierConfig != null) {
      result$
        ..add('DeviceSecretVerifierConfig')
        ..add(serializers.serialize(
          deviceSecretVerifierConfig,
          specifiedType: const FullType(DeviceSecretVerifierConfigType),
        ));
    }
    if (deviceName != null) {
      result$
        ..add('DeviceName')
        ..add(serializers.serialize(
          deviceName,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
