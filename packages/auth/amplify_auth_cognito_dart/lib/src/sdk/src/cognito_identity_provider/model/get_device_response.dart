// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_auth_cognito_dart.cognito_identity_provider.model.get_device_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/device_type.dart';
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'get_device_response.g.dart';

/// Gets the device response.
abstract class GetDeviceResponse
    with _i1.AWSEquatable<GetDeviceResponse>
    implements Built<GetDeviceResponse, GetDeviceResponseBuilder> {
  /// Gets the device response.
  factory GetDeviceResponse({required DeviceType device}) {
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

  static const List<_i2.SmithySerializer<GetDeviceResponse>> serializers = [
    GetDeviceResponseAwsJson11Serializer()
  ];

  /// The device.
  DeviceType get device;
  @override
  List<Object?> get props => [device];

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetDeviceResponse')
      ..add(
        'device',
        device,
      );
    return helper.toString();
  }
}

class GetDeviceResponseAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<GetDeviceResponse> {
  const GetDeviceResponseAwsJson11Serializer() : super('GetDeviceResponse');

  @override
  Iterable<Type> get types => const [
        GetDeviceResponse,
        _$GetDeviceResponse,
      ];

  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
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
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Device':
          result.device.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(DeviceType),
          ) as DeviceType));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetDeviceResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final GetDeviceResponse(:device) = object;
    result$.addAll([
      'Device',
      serializers.serialize(
        device,
        specifiedType: const FullType(DeviceType),
      ),
    ]);
    return result$;
  }
}
