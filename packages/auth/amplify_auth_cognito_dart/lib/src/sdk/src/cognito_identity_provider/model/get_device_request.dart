// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library amplify_auth_cognito_dart.cognito_identity_provider.model.get_device_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'get_device_request.g.dart';

/// Represents the request to get the device.
abstract class GetDeviceRequest
    with _i1.HttpInput<GetDeviceRequest>, _i2.AWSEquatable<GetDeviceRequest>
    implements Built<GetDeviceRequest, GetDeviceRequestBuilder> {
  /// Represents the request to get the device.
  factory GetDeviceRequest({
    required String deviceKey,
    String? accessToken,
  }) {
    return _$GetDeviceRequest._(
      deviceKey: deviceKey,
      accessToken: accessToken,
    );
  }

  /// Represents the request to get the device.
  factory GetDeviceRequest.build(
      [void Function(GetDeviceRequestBuilder) updates]) = _$GetDeviceRequest;

  const GetDeviceRequest._();

  factory GetDeviceRequest.fromRequest(
    GetDeviceRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<GetDeviceRequest>> serializers = [
    GetDeviceRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetDeviceRequestBuilder b) {}

  /// The device key.
  String get deviceKey;

  /// A valid access token that Amazon Cognito issued to the user whose device information you want to request.
  String? get accessToken;
  @override
  GetDeviceRequest getPayload() => this;
  @override
  List<Object?> get props => [
        deviceKey,
        accessToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetDeviceRequest')
      ..add(
        'deviceKey',
        deviceKey,
      )
      ..add(
        'accessToken',
        '***SENSITIVE***',
      );
    return helper.toString();
  }
}

class GetDeviceRequestAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<GetDeviceRequest> {
  const GetDeviceRequestAwsJson11Serializer() : super('GetDeviceRequest');

  @override
  Iterable<Type> get types => const [
        GetDeviceRequest,
        _$GetDeviceRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  GetDeviceRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetDeviceRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'DeviceKey':
          result.deviceKey = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'AccessToken':
          result.accessToken = (serializers.deserialize(
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
    GetDeviceRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final GetDeviceRequest(:deviceKey, :accessToken) = object;
    result$.addAll([
      'DeviceKey',
      serializers.serialize(
        deviceKey,
        specifiedType: const FullType(String),
      ),
    ]);
    if (accessToken != null) {
      result$
        ..add('AccessToken')
        ..add(serializers.serialize(
          accessToken,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
