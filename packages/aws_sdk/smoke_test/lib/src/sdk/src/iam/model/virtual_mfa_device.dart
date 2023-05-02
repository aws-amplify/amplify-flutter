// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.iam.model.virtual_mfa_device; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:typed_data' as _i2;

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i6;
import 'package:smoke_test/src/sdk/src/iam/model/tag.dart' as _i4;
import 'package:smoke_test/src/sdk/src/iam/model/user.dart' as _i3;

part 'virtual_mfa_device.g.dart';

/// Contains information about a virtual MFA device.
abstract class VirtualMfaDevice
    with _i1.AWSEquatable<VirtualMfaDevice>
    implements Built<VirtualMfaDevice, VirtualMfaDeviceBuilder> {
  /// Contains information about a virtual MFA device.
  factory VirtualMfaDevice({
    required String serialNumber,
    _i2.Uint8List? base32StringSeed,
    _i2.Uint8List? qrCodePng,
    _i3.User? user,
    DateTime? enableDate,
    List<_i4.Tag>? tags,
  }) {
    return _$VirtualMfaDevice._(
      serialNumber: serialNumber,
      base32StringSeed: base32StringSeed,
      qrCodePng: qrCodePng,
      user: user,
      enableDate: enableDate,
      tags: tags == null ? null : _i5.BuiltList(tags),
    );
  }

  /// Contains information about a virtual MFA device.
  factory VirtualMfaDevice.build(
      [void Function(VirtualMfaDeviceBuilder) updates]) = _$VirtualMfaDevice;

  const VirtualMfaDevice._();

  static const List<_i6.SmithySerializer> serializers = [
    VirtualMfaDeviceAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(VirtualMfaDeviceBuilder b) {}

  /// The serial number associated with `VirtualMFADevice`.
  String get serialNumber;

  /// The base32 seed defined as specified in [RFC3548](https://tools.ietf.org/html/rfc3548.txt). The `Base32StringSeed` is base64-encoded.
  _i2.Uint8List? get base32StringSeed;

  /// A QR code PNG image that encodes `otpauth://totp/$virtualMFADeviceName@$AccountName?secret=$Base32String` where `$virtualMFADeviceName` is one of the create call arguments. `AccountName` is the user name if set (otherwise, the account ID otherwise), and `Base32String` is the seed in base32 format. The `Base32String` value is base64-encoded.
  _i2.Uint8List? get qrCodePng;

  /// The IAM user associated with this virtual MFA device.
  _i3.User? get user;

  /// The date and time on which the virtual MFA device was enabled.
  DateTime? get enableDate;

  /// A list of tags that are attached to the virtual MFA device. For more information about tagging, see [Tagging IAM resources](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the _IAM User Guide_.
  _i5.BuiltList<_i4.Tag>? get tags;
  @override
  List<Object?> get props => [
        serialNumber,
        base32StringSeed,
        qrCodePng,
        user,
        enableDate,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('VirtualMfaDevice');
    helper.add(
      'serialNumber',
      serialNumber,
    );
    helper.add(
      'base32StringSeed',
      '***SENSITIVE***',
    );
    helper.add(
      'qrCodePng',
      '***SENSITIVE***',
    );
    helper.add(
      'user',
      user,
    );
    helper.add(
      'enableDate',
      enableDate,
    );
    helper.add(
      'tags',
      tags,
    );
    return helper.toString();
  }
}

class VirtualMfaDeviceAwsQuerySerializer
    extends _i6.StructuredSmithySerializer<VirtualMfaDevice> {
  const VirtualMfaDeviceAwsQuerySerializer() : super('VirtualMfaDevice');

  @override
  Iterable<Type> get types => const [
        VirtualMfaDevice,
        _$VirtualMfaDevice,
      ];
  @override
  Iterable<_i6.ShapeId> get supportedProtocols => const [
        _i6.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  VirtualMfaDevice deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VirtualMfaDeviceBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'SerialNumber':
          result.serialNumber = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'Base32StringSeed':
          if (value != null) {
            result.base32StringSeed = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.Uint8List),
            ) as _i2.Uint8List);
          }
          break;
        case 'QRCodePNG':
          if (value != null) {
            result.qrCodePng = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.Uint8List),
            ) as _i2.Uint8List);
          }
          break;
        case 'User':
          if (value != null) {
            result.user.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.User),
            ) as _i3.User));
          }
          break;
        case 'EnableDate':
          if (value != null) {
            result.enableDate = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'Tags':
          if (value != null) {
            result.tags.replace((const _i6.XmlBuiltListSerializer(
                    indexer: _i6.XmlIndexer.awsQueryList)
                .deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i5.BuiltList,
                [FullType(_i4.Tag)],
              ),
            ) as _i5.BuiltList<_i4.Tag>));
          }
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
    final payload = (object as VirtualMfaDevice);
    final result = <Object?>[
      const _i6.XmlElementName(
        'VirtualMfaDeviceResponse',
        _i6.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    result
      ..add(const _i6.XmlElementName('SerialNumber'))
      ..add(serializers.serialize(
        payload.serialNumber,
        specifiedType: const FullType(String),
      ));
    if (payload.base32StringSeed != null) {
      result
        ..add(const _i6.XmlElementName('Base32StringSeed'))
        ..add(serializers.serialize(
          payload.base32StringSeed!,
          specifiedType: const FullType.nullable(_i2.Uint8List),
        ));
    }
    if (payload.qrCodePng != null) {
      result
        ..add(const _i6.XmlElementName('QRCodePNG'))
        ..add(serializers.serialize(
          payload.qrCodePng!,
          specifiedType: const FullType.nullable(_i2.Uint8List),
        ));
    }
    if (payload.user != null) {
      result
        ..add(const _i6.XmlElementName('User'))
        ..add(serializers.serialize(
          payload.user!,
          specifiedType: const FullType(_i3.User),
        ));
    }
    if (payload.enableDate != null) {
      result
        ..add(const _i6.XmlElementName('EnableDate'))
        ..add(serializers.serialize(
          payload.enableDate!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (payload.tags != null) {
      result
        ..add(const _i6.XmlElementName('Tags'))
        ..add(const _i6.XmlBuiltListSerializer(
                indexer: _i6.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          payload.tags!,
          specifiedType: const FullType.nullable(
            _i5.BuiltList,
            [FullType(_i4.Tag)],
          ),
        ));
    }
    return result;
  }
}
