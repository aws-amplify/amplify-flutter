// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.import_key_pair_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart';

part 'import_key_pair_result.g.dart';

abstract class ImportKeyPairResult
    with _i1.AWSEquatable<ImportKeyPairResult>
    implements Built<ImportKeyPairResult, ImportKeyPairResultBuilder> {
  factory ImportKeyPairResult({
    String? keyFingerprint,
    String? keyName,
    String? keyPairId,
    List<Tag>? tags,
  }) {
    return _$ImportKeyPairResult._(
      keyFingerprint: keyFingerprint,
      keyName: keyName,
      keyPairId: keyPairId,
      tags: tags == null ? null : _i2.BuiltList(tags),
    );
  }

  factory ImportKeyPairResult.build(
          [void Function(ImportKeyPairResultBuilder) updates]) =
      _$ImportKeyPairResult;

  const ImportKeyPairResult._();

  /// Constructs a [ImportKeyPairResult] from a [payload] and [response].
  factory ImportKeyPairResult.fromResponse(
    ImportKeyPairResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<ImportKeyPairResult>> serializers = [
    ImportKeyPairResultEc2QuerySerializer()
  ];

  /// *   For RSA key pairs, the key fingerprint is the MD5 public key fingerprint as specified in section 4 of RFC 4716.
  ///
  /// *   For ED25519 key pairs, the key fingerprint is the base64-encoded SHA-256 digest, which is the default for OpenSSH, starting with [OpenSSH 6.8](http://www.openssh.com/txt/release-6.8).
  String? get keyFingerprint;

  /// The key pair name that you provided.
  String? get keyName;

  /// The ID of the resulting key pair.
  String? get keyPairId;

  /// The tags applied to the imported key pair.
  _i2.BuiltList<Tag>? get tags;
  @override
  List<Object?> get props => [
        keyFingerprint,
        keyName,
        keyPairId,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ImportKeyPairResult')
      ..add(
        'keyFingerprint',
        keyFingerprint,
      )
      ..add(
        'keyName',
        keyName,
      )
      ..add(
        'keyPairId',
        keyPairId,
      )
      ..add(
        'tags',
        tags,
      );
    return helper.toString();
  }
}

class ImportKeyPairResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<ImportKeyPairResult> {
  const ImportKeyPairResultEc2QuerySerializer() : super('ImportKeyPairResult');

  @override
  Iterable<Type> get types => const [
        ImportKeyPairResult,
        _$ImportKeyPairResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ImportKeyPairResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ImportKeyPairResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
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
        case 'keyPairId':
          result.keyPairId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
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
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ImportKeyPairResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'ImportKeyPairResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ImportKeyPairResult(:keyFingerprint, :keyName, :keyPairId, :tags) =
        object;
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
    if (keyPairId != null) {
      result$
        ..add(const _i3.XmlElementName('KeyPairId'))
        ..add(serializers.serialize(
          keyPairId,
          specifiedType: const FullType(String),
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
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(Tag)],
          ),
        ));
    }
    return result$;
  }
}
