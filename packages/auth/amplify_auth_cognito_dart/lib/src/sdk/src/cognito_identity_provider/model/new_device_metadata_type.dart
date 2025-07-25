// Generated with smithy-dart 0.3.2. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,unnecessary_library_name

library amplify_auth_cognito_dart.cognito_identity_provider.model.new_device_metadata_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'new_device_metadata_type.g.dart';

/// Information that your user pool responds with in `AuthenticationResult`when you configure it to remember devices and a user signs in with an unrecognized device. Amazon Cognito presents a new device key that you can use to set up [device authentication](https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html) in a "Remember me on this device" authentication model.
abstract class NewDeviceMetadataType
    with _i1.AWSEquatable<NewDeviceMetadataType>
    implements Built<NewDeviceMetadataType, NewDeviceMetadataTypeBuilder> {
  /// Information that your user pool responds with in `AuthenticationResult`when you configure it to remember devices and a user signs in with an unrecognized device. Amazon Cognito presents a new device key that you can use to set up [device authentication](https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html) in a "Remember me on this device" authentication model.
  factory NewDeviceMetadataType({String? deviceKey, String? deviceGroupKey}) {
    return _$NewDeviceMetadataType._(
      deviceKey: deviceKey,
      deviceGroupKey: deviceGroupKey,
    );
  }

  /// Information that your user pool responds with in `AuthenticationResult`when you configure it to remember devices and a user signs in with an unrecognized device. Amazon Cognito presents a new device key that you can use to set up [device authentication](https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html) in a "Remember me on this device" authentication model.
  factory NewDeviceMetadataType.build([
    void Function(NewDeviceMetadataTypeBuilder) updates,
  ]) = _$NewDeviceMetadataType;

  const NewDeviceMetadataType._();

  static const List<_i2.SmithySerializer<NewDeviceMetadataType>> serializers = [
    NewDeviceMetadataTypeAwsJson11Serializer(),
  ];

  /// The device key, an identifier used in generating the `DEVICE\_PASSWORD\_VERIFIER` for device SRP authentication.
  String? get deviceKey;

  /// The device group key, an identifier used in generating the `DEVICE\_PASSWORD\_VERIFIER` for device SRP authentication.
  String? get deviceGroupKey;
  @override
  List<Object?> get props => [deviceKey, deviceGroupKey];

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('NewDeviceMetadataType')
      ..add('deviceKey', deviceKey)
      ..add('deviceGroupKey', deviceGroupKey);
    return helper.toString();
  }
}

class NewDeviceMetadataTypeAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<NewDeviceMetadataType> {
  const NewDeviceMetadataTypeAwsJson11Serializer()
    : super('NewDeviceMetadataType');

  @override
  Iterable<Type> get types => const [
    NewDeviceMetadataType,
    _$NewDeviceMetadataType,
  ];

  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
    _i2.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
  ];

  @override
  NewDeviceMetadataType deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NewDeviceMetadataTypeBuilder();
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
          result.deviceKey =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String);
        case 'DeviceGroupKey':
          result.deviceGroupKey =
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
    NewDeviceMetadataType object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final NewDeviceMetadataType(:deviceKey, :deviceGroupKey) = object;
    if (deviceKey != null) {
      result$
        ..add('DeviceKey')
        ..add(
          serializers.serialize(
            deviceKey,
            specifiedType: const FullType(String),
          ),
        );
    }
    if (deviceGroupKey != null) {
      result$
        ..add('DeviceGroupKey')
        ..add(
          serializers.serialize(
            deviceGroupKey,
            specifiedType: const FullType(String),
          ),
        );
    }
    return result$;
  }
}
