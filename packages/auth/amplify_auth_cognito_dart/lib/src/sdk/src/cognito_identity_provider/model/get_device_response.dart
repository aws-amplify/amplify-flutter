// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library amplify_auth_cognito_dart.cognito_identity_provider.model.get_device_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/device_type.dart'
    as _i2;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'get_device_response.g.dart';

/// Gets the device response.
abstract class GetDeviceResponse
    with _i1.AWSEquatable<GetDeviceResponse>
    implements Built<GetDeviceResponse, GetDeviceResponseBuilder> {
  /// Gets the device response.
  factory GetDeviceResponse({required _i2.DeviceType device}) {
    return _$GetDeviceResponse._(device: device);
  }

  /// Gets the device response.
  factory GetDeviceResponse.build(
      [void Function(GetDeviceResponseBuilder) updates]) = _$GetDeviceResponse;

  const GetDeviceResponse._();

  /// Constructs a [GetDeviceResponse] from a [payload] and [response].
  factory GetDeviceResponse.fromResponse(
    GetDeviceResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    GetDeviceResponseAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetDeviceResponseBuilder b) {}

  /// The device.
  _i2.DeviceType get device;
  @override
  List<Object?> get props => [device];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetDeviceResponse');
    helper.add(
      'device',
      device,
    );
    return helper.toString();
  }
}

class GetDeviceResponseAwsJson11Serializer
    extends _i3.StructuredSmithySerializer<GetDeviceResponse> {
  const GetDeviceResponseAwsJson11Serializer() : super('GetDeviceResponse');

  @override
  Iterable<Type> get types => const [
        GetDeviceResponse,
        _$GetDeviceResponse,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  GetDeviceResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetDeviceResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'Device':
          result.device.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.DeviceType),
          ) as _i2.DeviceType));
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
    final payload = (object as GetDeviceResponse);
    final result = <Object?>[
      'Device',
      serializers.serialize(
        payload.device,
        specifiedType: const FullType(_i2.DeviceType),
      ),
    ];
    return result;
  }
}
