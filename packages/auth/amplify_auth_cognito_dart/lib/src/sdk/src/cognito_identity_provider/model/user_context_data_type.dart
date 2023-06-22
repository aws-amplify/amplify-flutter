// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library amplify_auth_cognito_dart.cognito_identity_provider.model.user_context_data_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'user_context_data_type.g.dart';

/// Contextual data, such as the user's device fingerprint, IP address, or location, used for evaluating the risk of an unexpected event by Amazon Cognito advanced security.
abstract class UserContextDataType
    with _i1.AWSEquatable<UserContextDataType>
    implements Built<UserContextDataType, UserContextDataTypeBuilder> {
  /// Contextual data, such as the user's device fingerprint, IP address, or location, used for evaluating the risk of an unexpected event by Amazon Cognito advanced security.
  factory UserContextDataType({
    String? ipAddress,
    String? encodedData,
  }) {
    return _$UserContextDataType._(
      ipAddress: ipAddress,
      encodedData: encodedData,
    );
  }

  /// Contextual data, such as the user's device fingerprint, IP address, or location, used for evaluating the risk of an unexpected event by Amazon Cognito advanced security.
  factory UserContextDataType.build(
          [void Function(UserContextDataTypeBuilder) updates]) =
      _$UserContextDataType;

  const UserContextDataType._();

  static const List<_i2.SmithySerializer<UserContextDataType>> serializers = [
    UserContextDataTypeAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UserContextDataTypeBuilder b) {}

  /// The source IP address of your user's device.
  String? get ipAddress;

  /// Encoded device-fingerprint details that your app collected with the Amazon Cognito context data collection library. For more information, see [Adding user device and session data to API requests](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pool-settings-adaptive-authentication.html#user-pool-settings-adaptive-authentication-device-fingerprint).
  String? get encodedData;
  @override
  List<Object?> get props => [
        ipAddress,
        encodedData,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UserContextDataType')
      ..add(
        'ipAddress',
        ipAddress,
      )
      ..add(
        'encodedData',
        encodedData,
      );
    return helper.toString();
  }
}

class UserContextDataTypeAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<UserContextDataType> {
  const UserContextDataTypeAwsJson11Serializer() : super('UserContextDataType');

  @override
  Iterable<Type> get types => const [
        UserContextDataType,
        _$UserContextDataType,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  UserContextDataType deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserContextDataTypeBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'IpAddress':
          result.ipAddress = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'EncodedData':
          result.encodedData = (serializers.deserialize(
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
    UserContextDataType object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final UserContextDataType(:ipAddress, :encodedData) = object;
    if (ipAddress != null) {
      result$
        ..add('IpAddress')
        ..add(serializers.serialize(
          ipAddress,
          specifiedType: const FullType(String),
        ));
    }
    if (encodedData != null) {
      result$
        ..add('EncodedData')
        ..add(serializers.serialize(
          encodedData,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
