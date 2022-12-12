// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library amplify_auth_cognito_dart.cognito_identity_provider.model.update_device_status_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'update_device_status_response.g.dart';

/// The response to the request to update the device status.
abstract class UpdateDeviceStatusResponse
    with _i1.AWSEquatable<UpdateDeviceStatusResponse>
    implements
        Built<UpdateDeviceStatusResponse, UpdateDeviceStatusResponseBuilder>,
        _i2.EmptyPayload {
  /// The response to the request to update the device status.
  factory UpdateDeviceStatusResponse() {
    return _$UpdateDeviceStatusResponse._();
  }

  /// The response to the request to update the device status.
  factory UpdateDeviceStatusResponse.build(
          [void Function(UpdateDeviceStatusResponseBuilder) updates]) =
      _$UpdateDeviceStatusResponse;

  const UpdateDeviceStatusResponse._();

  /// Constructs a [UpdateDeviceStatusResponse] from a [payload] and [response].
  factory UpdateDeviceStatusResponse.fromResponse(
    UpdateDeviceStatusResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer> serializers = [
    UpdateDeviceStatusResponseAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UpdateDeviceStatusResponseBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UpdateDeviceStatusResponse');
    return helper.toString();
  }
}

class UpdateDeviceStatusResponseAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<UpdateDeviceStatusResponse> {
  const UpdateDeviceStatusResponseAwsJson11Serializer()
      : super('UpdateDeviceStatusResponse');

  @override
  Iterable<Type> get types => const [
        UpdateDeviceStatusResponse,
        _$UpdateDeviceStatusResponse,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  UpdateDeviceStatusResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return UpdateDeviceStatusResponseBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
