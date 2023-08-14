// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.key_pair_info; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/key_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart';

part 'key_pair_info.g.dart';

/// Describes a key pair.
abstract class KeyPairInfo
    with _i1.AWSEquatable<KeyPairInfo>
    implements Built<KeyPairInfo, KeyPairInfoBuilder> {
  /// Describes a key pair.
  factory KeyPairInfo({
    String? keyPairId,
    String? keyFingerprint,
    String? keyName,
    KeyType? keyType,
    List<Tag>? tags,
    String? publicKey,
    DateTime? createTime,
  }) {
    return _$KeyPairInfo._(
      keyPairId: keyPairId,
      keyFingerprint: keyFingerprint,
      keyName: keyName,
      keyType: keyType,
      tags: tags == null ? null : _i2.BuiltList(tags),
      publicKey: publicKey,
      createTime: createTime,
    );
  }

  /// Describes a key pair.
  factory KeyPairInfo.build([void Function(KeyPairInfoBuilder) updates]) =
      _$KeyPairInfo;

  const KeyPairInfo._();

  static const List<_i3.SmithySerializer<KeyPairInfo>> serializers = [
    KeyPairInfoEc2QuerySerializer()
  ];

  /// The ID of the key pair.
  String? get keyPairId;

  /// If you used CreateKeyPair to create the key pair:
  ///
  /// *   For RSA key pairs, the key fingerprint is the SHA-1 digest of the DER encoded private key.
  ///
  /// *   For ED25519 key pairs, the key fingerprint is the base64-encoded SHA-256 digest, which is the default for OpenSSH, starting with [OpenSSH 6.8](http://www.openssh.com/txt/release-6.8).
  ///
  ///
  /// If you used ImportKeyPair to provide Amazon Web Services the public key:
  ///
  /// *   For RSA key pairs, the key fingerprint is the MD5 public key fingerprint as specified in section 4 of RFC4716.
  ///
  /// *   For ED25519 key pairs, the key fingerprint is the base64-encoded SHA-256 digest, which is the default for OpenSSH, starting with [OpenSSH 6.8](http://www.openssh.com/txt/release-6.8).
  String? get keyFingerprint;

  /// The name of the key pair.
  String? get keyName;

  /// The type of key pair.
  KeyType? get keyType;

  /// Any tags applied to the key pair.
  _i2.BuiltList<Tag>? get tags;

  /// The public key material.
  String? get publicKey;

  /// If you used Amazon EC2 to create the key pair, this is the date and time when the key was created, in [ISO 8601 date-time format](https://www.iso.org/iso-8601-date-and-time-format.html), in the UTC time zone.
  ///
  /// If you imported an existing key pair to Amazon EC2, this is the date and time the key was imported, in [ISO 8601 date-time format](https://www.iso.org/iso-8601-date-and-time-format.html), in the UTC time zone.
  DateTime? get createTime;
  @override
  List<Object?> get props => [
        keyPairId,
        keyFingerprint,
        keyName,
        keyType,
        tags,
        publicKey,
        createTime,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('KeyPairInfo')
      ..add(
        'keyPairId',
        keyPairId,
      )
      ..add(
        'keyFingerprint',
        keyFingerprint,
      )
      ..add(
        'keyName',
        keyName,
      )
      ..add(
        'keyType',
        keyType,
      )
      ..add(
        'tags',
        tags,
      )
      ..add(
        'publicKey',
        publicKey,
      )
      ..add(
        'createTime',
        createTime,
      );
    return helper.toString();
  }
}

class KeyPairInfoEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<KeyPairInfo> {
  const KeyPairInfoEc2QuerySerializer() : super('KeyPairInfo');

  @override
  Iterable<Type> get types => const [
        KeyPairInfo,
        _$KeyPairInfo,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  KeyPairInfo deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = KeyPairInfoBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'keyPairId':
          result.keyPairId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'keyFingerprint':
          result.keyFingerprint = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'keyName':
          result.keyName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'keyType':
          result.keyType = (serializers.deserialize(
            value,
            specifiedType: const FullType(KeyType),
          ) as KeyType);
        case 'tagSet':
          result.tags.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(Tag)],
            ),
          ) as _i2.BuiltList<Tag>));
        case 'publicKey':
          result.publicKey = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'createTime':
          result.createTime = (serializers.deserialize(
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
    KeyPairInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'KeyPairInfoResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final KeyPairInfo(
      :keyPairId,
      :keyFingerprint,
      :keyName,
      :keyType,
      :tags,
      :publicKey,
      :createTime
    ) = object;
    if (keyPairId != null) {
      result$
        ..add(const _i3.XmlElementName('KeyPairId'))
        ..add(serializers.serialize(
          keyPairId,
          specifiedType: const FullType(String),
        ));
    }
    if (keyFingerprint != null) {
      result$
        ..add(const _i3.XmlElementName('KeyFingerprint'))
        ..add(serializers.serialize(
          keyFingerprint,
          specifiedType: const FullType(String),
        ));
    }
    if (keyName != null) {
      result$
        ..add(const _i3.XmlElementName('KeyName'))
        ..add(serializers.serialize(
          keyName,
          specifiedType: const FullType(String),
        ));
    }
    if (keyType != null) {
      result$
        ..add(const _i3.XmlElementName('KeyType'))
        ..add(serializers.serialize(
          keyType,
          specifiedType: const FullType.nullable(KeyType),
        ));
    }
    if (tags != null) {
      result$
        ..add(const _i3.XmlElementName('TagSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          tags,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(Tag)],
          ),
        ));
    }
    if (publicKey != null) {
      result$
        ..add(const _i3.XmlElementName('PublicKey'))
        ..add(serializers.serialize(
          publicKey,
          specifiedType: const FullType(String),
        ));
    }
    if (createTime != null) {
      result$
        ..add(const _i3.XmlElementName('CreateTime'))
        ..add(serializers.serialize(
          createTime,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    return result$;
  }
}
