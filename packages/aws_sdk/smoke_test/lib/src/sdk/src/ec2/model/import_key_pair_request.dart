// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.import_key_pair_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:typed_data' as _i3;

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/tag_specification.dart';

part 'import_key_pair_request.g.dart';

abstract class ImportKeyPairRequest
    with
        _i1.HttpInput<ImportKeyPairRequest>,
        _i2.AWSEquatable<ImportKeyPairRequest>
    implements Built<ImportKeyPairRequest, ImportKeyPairRequestBuilder> {
  factory ImportKeyPairRequest({
    bool? dryRun,
    String? keyName,
    _i3.Uint8List? publicKeyMaterial,
    List<TagSpecification>? tagSpecifications,
  }) {
    dryRun ??= false;
    return _$ImportKeyPairRequest._(
      dryRun: dryRun,
      keyName: keyName,
      publicKeyMaterial: publicKeyMaterial,
      tagSpecifications:
          tagSpecifications == null ? null : _i4.BuiltList(tagSpecifications),
    );
  }

  factory ImportKeyPairRequest.build(
          [void Function(ImportKeyPairRequestBuilder) updates]) =
      _$ImportKeyPairRequest;

  const ImportKeyPairRequest._();

  factory ImportKeyPairRequest.fromRequest(
    ImportKeyPairRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<ImportKeyPairRequest>> serializers = [
    ImportKeyPairRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ImportKeyPairRequestBuilder b) {
    b.dryRun = false;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// A unique name for the key pair.
  String? get keyName;

  /// The public key. For API calls, the text must be base64-encoded. For command line tools, base64 encoding is performed for you.
  _i3.Uint8List? get publicKeyMaterial;

  /// The tags to apply to the imported key pair.
  _i4.BuiltList<TagSpecification>? get tagSpecifications;
  @override
  ImportKeyPairRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        keyName,
        publicKeyMaterial,
        tagSpecifications,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ImportKeyPairRequest')
      ..add(
        'dryRun',
        dryRun,
      )
      ..add(
        'keyName',
        keyName,
      )
      ..add(
        'publicKeyMaterial',
        publicKeyMaterial,
      )
      ..add(
        'tagSpecifications',
        tagSpecifications,
      );
    return helper.toString();
  }
}

class ImportKeyPairRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<ImportKeyPairRequest> {
  const ImportKeyPairRequestEc2QuerySerializer()
      : super('ImportKeyPairRequest');

  @override
  Iterable<Type> get types => const [
        ImportKeyPairRequest,
        _$ImportKeyPairRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ImportKeyPairRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ImportKeyPairRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'dryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'keyName':
          result.keyName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'publicKeyMaterial':
          result.publicKeyMaterial = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.Uint8List),
          ) as _i3.Uint8List);
        case 'TagSpecification':
          result.tagSpecifications.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(TagSpecification)],
            ),
          ) as _i4.BuiltList<TagSpecification>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ImportKeyPairRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'ImportKeyPairRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ImportKeyPairRequest(
      :dryRun,
      :keyName,
      :publicKeyMaterial,
      :tagSpecifications
    ) = object;
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (keyName != null) {
      result$
        ..add(const _i1.XmlElementName('KeyName'))
        ..add(serializers.serialize(
          keyName,
          specifiedType: const FullType(String),
        ));
    }
    if (publicKeyMaterial != null) {
      result$
        ..add(const _i1.XmlElementName('PublicKeyMaterial'))
        ..add(serializers.serialize(
          publicKeyMaterial,
          specifiedType: const FullType(_i3.Uint8List),
        ));
    }
    if (tagSpecifications != null) {
      result$
        ..add(const _i1.XmlElementName('TagSpecification'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          tagSpecifications,
          specifiedType: const FullType(
            _i4.BuiltList,
            [FullType(TagSpecification)],
          ),
        ));
    }
    return result$;
  }
}
