// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library amplify_auth_cognito_dart.cognito_identity_provider.model.confirm_device_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'confirm_device_response.g.dart';

/// Confirms the device response.
abstract class ConfirmDeviceResponse
    with _i1.AWSEquatable<ConfirmDeviceResponse>
    implements Built<ConfirmDeviceResponse, ConfirmDeviceResponseBuilder> {
  /// Confirms the device response.
  factory ConfirmDeviceResponse({bool? userConfirmationNecessary}) {
    userConfirmationNecessary ??= false;
    return _$ConfirmDeviceResponse._(
        userConfirmationNecessary: userConfirmationNecessary);
  }

  /// Confirms the device response.
  factory ConfirmDeviceResponse.build(
          [void Function(ConfirmDeviceResponseBuilder) updates]) =
      _$ConfirmDeviceResponse;

  const ConfirmDeviceResponse._();

  /// Constructs a [ConfirmDeviceResponse] from a [payload] and [response].
  factory ConfirmDeviceResponse.fromResponse(
    ConfirmDeviceResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer> serializers = [
    ConfirmDeviceResponseAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ConfirmDeviceResponseBuilder b) {
    b.userConfirmationNecessary = false;
  }

  /// Indicates whether the user confirmation must confirm the device response.
  bool get userConfirmationNecessary;
  @override
  List<Object?> get props => [userConfirmationNecessary];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ConfirmDeviceResponse');
    helper.add(
      'userConfirmationNecessary',
      userConfirmationNecessary,
    );
    return helper.toString();
  }
}

class ConfirmDeviceResponseAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<ConfirmDeviceResponse> {
  const ConfirmDeviceResponseAwsJson11Serializer()
      : super('ConfirmDeviceResponse');

  @override
  Iterable<Type> get types => const [
        ConfirmDeviceResponse,
        _$ConfirmDeviceResponse,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  ConfirmDeviceResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConfirmDeviceResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'UserConfirmationNecessary':
          result.userConfirmationNecessary = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
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
    final payload = (object as ConfirmDeviceResponse);
    final result = <Object?>[
      'UserConfirmationNecessary',
      serializers.serialize(
        payload.userConfirmationNecessary,
        specifiedType: const FullType(bool),
      ),
    ];
    return result;
  }
}
