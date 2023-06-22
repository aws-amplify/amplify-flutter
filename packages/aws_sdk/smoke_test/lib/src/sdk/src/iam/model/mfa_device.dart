// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.mfa_device; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'mfa_device.g.dart';

/// Contains information about an MFA device.
///
/// This data type is used as a response element in the ListMFADevices operation.
abstract class MfaDevice
    with _i1.AWSEquatable<MfaDevice>
    implements Built<MfaDevice, MfaDeviceBuilder> {
  /// Contains information about an MFA device.
  ///
  /// This data type is used as a response element in the ListMFADevices operation.
  factory MfaDevice({
    required String userName,
    required String serialNumber,
    required DateTime enableDate,
  }) {
    return _$MfaDevice._(
      userName: userName,
      serialNumber: serialNumber,
      enableDate: enableDate,
    );
  }

  /// Contains information about an MFA device.
  ///
  /// This data type is used as a response element in the ListMFADevices operation.
  factory MfaDevice.build([void Function(MfaDeviceBuilder) updates]) =
      _$MfaDevice;

  const MfaDevice._();

  static const List<_i2.SmithySerializer<MfaDevice>> serializers = [
    MfaDeviceAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MfaDeviceBuilder b) {}

  /// The user with whom the MFA device is associated.
  String get userName;

  /// The serial number that uniquely identifies the MFA device. For virtual MFA devices, the serial number is the device ARN.
  String get serialNumber;

  /// The date when the MFA device was enabled for the user.
  DateTime get enableDate;
  @override
  List<Object?> get props => [
        userName,
        serialNumber,
        enableDate,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('MfaDevice')
      ..add(
        'userName',
        userName,
      )
      ..add(
        'serialNumber',
        serialNumber,
      )
      ..add(
        'enableDate',
        enableDate,
      );
    return helper.toString();
  }
}

class MfaDeviceAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<MfaDevice> {
  const MfaDeviceAwsQuerySerializer() : super('MfaDevice');

  @override
  Iterable<Type> get types => const [
        MfaDevice,
        _$MfaDevice,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  MfaDevice deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MfaDeviceBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'UserName':
          result.userName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'SerialNumber':
          result.serialNumber = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'EnableDate':
          result.enableDate = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    MfaDevice object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'MfaDeviceResponse',
        _i2.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final MfaDevice(:userName, :serialNumber, :enableDate) = object;
    result$
      ..add(const _i2.XmlElementName('UserName'))
      ..add(serializers.serialize(
        userName,
        specifiedType: const FullType(String),
      ));
    result$
      ..add(const _i2.XmlElementName('SerialNumber'))
      ..add(serializers.serialize(
        serialNumber,
        specifiedType: const FullType(String),
      ));
    result$
      ..add(const _i2.XmlElementName('EnableDate'))
      ..add(serializers.serialize(
        enableDate,
        specifiedType: const FullType.nullable(DateTime),
      ));
    return result$;
  }
}
