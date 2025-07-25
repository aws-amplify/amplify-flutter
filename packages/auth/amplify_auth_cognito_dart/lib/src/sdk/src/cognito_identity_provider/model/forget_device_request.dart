// Generated with smithy-dart 0.3.2. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,unnecessary_library_name

library amplify_auth_cognito_dart.cognito_identity_provider.model.forget_device_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'forget_device_request.g.dart';

/// Represents the request to forget the device.
abstract class ForgetDeviceRequest
    with
        _i1.HttpInput<ForgetDeviceRequest>,
        _i2.AWSEquatable<ForgetDeviceRequest>
    implements Built<ForgetDeviceRequest, ForgetDeviceRequestBuilder> {
  /// Represents the request to forget the device.
  factory ForgetDeviceRequest({
    String? accessToken,
    required String deviceKey,
  }) {
    return _$ForgetDeviceRequest._(
      accessToken: accessToken,
      deviceKey: deviceKey,
    );
  }

  /// Represents the request to forget the device.
  factory ForgetDeviceRequest.build([
    void Function(ForgetDeviceRequestBuilder) updates,
  ]) = _$ForgetDeviceRequest;

  const ForgetDeviceRequest._();

  factory ForgetDeviceRequest.fromRequest(
    ForgetDeviceRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) => payload;

  static const List<_i1.SmithySerializer<ForgetDeviceRequest>> serializers = [
    ForgetDeviceRequestAwsJson11Serializer(),
  ];

  /// A valid access token that Amazon Cognito issued to the currently signed-in user. Must include a scope claim for `aws.cognito.signin.user.admin`.
  String? get accessToken;

  /// The unique identifier, or device key, of the device that the user wants to forget.
  String get deviceKey;
  @override
  ForgetDeviceRequest getPayload() => this;

  @override
  List<Object?> get props => [accessToken, deviceKey];

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ForgetDeviceRequest')
      ..add('accessToken', '***SENSITIVE***')
      ..add('deviceKey', deviceKey);
    return helper.toString();
  }
}

class ForgetDeviceRequestAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<ForgetDeviceRequest> {
  const ForgetDeviceRequestAwsJson11Serializer() : super('ForgetDeviceRequest');

  @override
  Iterable<Type> get types => const [
    ForgetDeviceRequest,
    _$ForgetDeviceRequest,
  ];

  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
    _i1.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
  ];

  @override
  ForgetDeviceRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ForgetDeviceRequestBuilder();
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
          result.accessToken =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String);
        case 'DeviceKey':
          result.deviceKey =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ForgetDeviceRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final ForgetDeviceRequest(:accessToken, :deviceKey) = object;
    result$.addAll([
      'DeviceKey',
      serializers.serialize(deviceKey, specifiedType: const FullType(String)),
    ]);
    if (accessToken != null) {
      result$
        ..add('AccessToken')
        ..add(
          serializers.serialize(
            accessToken,
            specifiedType: const FullType(String),
          ),
        );
    }
    return result$;
  }
}
