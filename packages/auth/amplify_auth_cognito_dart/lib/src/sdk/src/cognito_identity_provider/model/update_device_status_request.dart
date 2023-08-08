// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library amplify_auth_cognito_dart.cognito_identity_provider.model.update_device_status_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/device_remembered_status_type.dart'
    as _i3;
import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'update_device_status_request.g.dart';

/// Represents the request to update the device status.
abstract class UpdateDeviceStatusRequest
    with
        _i1.HttpInput<UpdateDeviceStatusRequest>,
        _i2.AWSEquatable<UpdateDeviceStatusRequest>
    implements
        Built<UpdateDeviceStatusRequest, UpdateDeviceStatusRequestBuilder> {
  /// Represents the request to update the device status.
  factory UpdateDeviceStatusRequest({
    required String accessToken,
    required String deviceKey,
    _i3.DeviceRememberedStatusType? deviceRememberedStatus,
  }) {
    return _$UpdateDeviceStatusRequest._(
      accessToken: accessToken,
      deviceKey: deviceKey,
      deviceRememberedStatus: deviceRememberedStatus,
    );
  }

  /// Represents the request to update the device status.
  factory UpdateDeviceStatusRequest.build(
          [void Function(UpdateDeviceStatusRequestBuilder) updates]) =
      _$UpdateDeviceStatusRequest;

  const UpdateDeviceStatusRequest._();

  factory UpdateDeviceStatusRequest.fromRequest(
    UpdateDeviceStatusRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<UpdateDeviceStatusRequest>>
      serializers = [UpdateDeviceStatusRequestAwsJson11Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UpdateDeviceStatusRequestBuilder b) {}

  /// A valid access token that Amazon Cognito issued to the user whose device status you want to update.
  String get accessToken;

  /// The device key.
  String get deviceKey;

  /// The status of whether a device is remembered.
  _i3.DeviceRememberedStatusType? get deviceRememberedStatus;
  @override
  UpdateDeviceStatusRequest getPayload() => this;
  @override
  List<Object?> get props => [
        accessToken,
        deviceKey,
        deviceRememberedStatus,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UpdateDeviceStatusRequest')
      ..add(
        'accessToken',
        '***SENSITIVE***',
      )
      ..add(
        'deviceKey',
        deviceKey,
      )
      ..add(
        'deviceRememberedStatus',
        deviceRememberedStatus,
      );
    return helper.toString();
  }
}

class UpdateDeviceStatusRequestAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<UpdateDeviceStatusRequest> {
  const UpdateDeviceStatusRequestAwsJson11Serializer()
      : super('UpdateDeviceStatusRequest');

  @override
  Iterable<Type> get types => const [
        UpdateDeviceStatusRequest,
        _$UpdateDeviceStatusRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  UpdateDeviceStatusRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateDeviceStatusRequestBuilder();
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
        case 'DeviceRememberedStatus':
          result.deviceRememberedStatus = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.DeviceRememberedStatusType),
          ) as _i3.DeviceRememberedStatusType);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    UpdateDeviceStatusRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final UpdateDeviceStatusRequest(
      :accessToken,
      :deviceKey,
      :deviceRememberedStatus
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
    if (deviceRememberedStatus != null) {
      result$
        ..add('DeviceRememberedStatus')
        ..add(serializers.serialize(
          deviceRememberedStatus,
          specifiedType: const FullType(_i3.DeviceRememberedStatusType),
        ));
    }
    return result$;
  }
}
