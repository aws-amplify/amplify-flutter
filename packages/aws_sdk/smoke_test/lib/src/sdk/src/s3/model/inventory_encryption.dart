// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.s3.model.inventory_encryption; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/s3/model/ssekms.dart' as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/sses3.dart' as _i2;

part 'inventory_encryption.g.dart';

/// Contains the type of server-side encryption used to encrypt the inventory results.
abstract class InventoryEncryption
    with _i1.AWSEquatable<InventoryEncryption>
    implements Built<InventoryEncryption, InventoryEncryptionBuilder> {
  /// Contains the type of server-side encryption used to encrypt the inventory results.
  factory InventoryEncryption({
    _i2.Sses3? sses3,
    _i3.Ssekms? ssekms,
  }) {
    return _$InventoryEncryption._(
      sses3: sses3,
      ssekms: ssekms,
    );
  }

  /// Contains the type of server-side encryption used to encrypt the inventory results.
  factory InventoryEncryption.build(
          [void Function(InventoryEncryptionBuilder) updates]) =
      _$InventoryEncryption;

  const InventoryEncryption._();

  static const List<_i4.SmithySerializer<InventoryEncryption>> serializers = [
    InventoryEncryptionRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InventoryEncryptionBuilder b) {}

  /// Specifies the use of SSE-S3 to encrypt delivered inventory reports.
  _i2.Sses3? get sses3;

  /// Specifies the use of SSE-KMS to encrypt delivered inventory reports.
  _i3.Ssekms? get ssekms;
  @override
  List<Object?> get props => [
        sses3,
        ssekms,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('InventoryEncryption')
      ..add(
        'sses3',
        sses3,
      )
      ..add(
        'ssekms',
        ssekms,
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
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'SSE-KMS':
          result.ssekms.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.Ssekms),
          ) as _i3.Ssekms));
        case 'SSE-S3':
          result.sses3.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.Sses3),
          ) as _i2.Sses3));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    InventoryEncryption object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i4.XmlElementName(
        'InventoryEncryption',
        _i4.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final InventoryEncryption(:ssekms, :sses3) = object;
    if (ssekms != null) {
      result$
        ..add(const _i4.XmlElementName('SSE-KMS'))
        ..add(serializers.serialize(
          ssekms,
          specifiedType: const FullType(_i3.Ssekms),
        ));
    }
    if (sses3 != null) {
      result$
        ..add(const _i4.XmlElementName('SSE-S3'))
        ..add(serializers.serialize(
          sses3,
          specifiedType: const FullType(_i2.Sses3),
        ));
    }
    return result$;
  }
}
