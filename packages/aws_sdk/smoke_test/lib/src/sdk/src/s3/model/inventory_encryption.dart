// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.s3.model.inventory_encryption; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/s3/model/ssekms.dart' as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/sses3.dart' as _i3;

part 'inventory_encryption.g.dart';

/// Contains the type of server-side encryption used to encrypt the inventory results.
abstract class InventoryEncryption
    with _i1.AWSEquatable<InventoryEncryption>
    implements Built<InventoryEncryption, InventoryEncryptionBuilder> {
  /// Contains the type of server-side encryption used to encrypt the inventory results.
  factory InventoryEncryption({
    _i2.Ssekms? ssekms,
    _i3.Sses3? sses3,
  }) {
    return _$InventoryEncryption._(
      ssekms: ssekms,
      sses3: sses3,
    );
  }

  /// Contains the type of server-side encryption used to encrypt the inventory results.
  factory InventoryEncryption.build(
          [void Function(InventoryEncryptionBuilder) updates]) =
      _$InventoryEncryption;

  const InventoryEncryption._();

  static const List<_i4.SmithySerializer> serializers = [
    InventoryEncryptionRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InventoryEncryptionBuilder b) {}

  /// Specifies the use of SSE-KMS to encrypt delivered inventory reports.
  _i2.Ssekms? get ssekms;

  /// Specifies the use of SSE-S3 to encrypt delivered inventory reports.
  _i3.Sses3? get sses3;
  @override
  List<Object?> get props => [
        ssekms,
        sses3,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('InventoryEncryption');
    helper.add(
      'ssekms',
      ssekms,
    );
    helper.add(
      'sses3',
      sses3,
    );
    return helper.toString();
  }
}

class InventoryEncryptionRestXmlSerializer
    extends _i4.StructuredSmithySerializer<InventoryEncryption> {
  const InventoryEncryptionRestXmlSerializer() : super('InventoryEncryption');

  @override
  Iterable<Type> get types => const [
        InventoryEncryption,
        _$InventoryEncryption,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  InventoryEncryption deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InventoryEncryptionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'SSE-KMS':
          if (value != null) {
            result.ssekms.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.Ssekms),
            ) as _i2.Ssekms));
          }
          break;
        case 'SSE-S3':
          if (value != null) {
            result.sses3.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.Sses3),
            ) as _i3.Sses3));
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
    final payload = (object as InventoryEncryption);
    final result = <Object?>[
      const _i4.XmlElementName(
        'InventoryEncryption',
        _i4.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    if (payload.ssekms != null) {
      result
        ..add(const _i4.XmlElementName('SSE-KMS'))
        ..add(serializers.serialize(
          payload.ssekms!,
          specifiedType: const FullType(_i2.Ssekms),
        ));
    }
    if (payload.sses3 != null) {
      result
        ..add(const _i4.XmlElementName('SSE-S3'))
        ..add(serializers.serialize(
          payload.sses3!,
          specifiedType: const FullType(_i3.Sses3),
        ));
    }
    return result;
  }
}
