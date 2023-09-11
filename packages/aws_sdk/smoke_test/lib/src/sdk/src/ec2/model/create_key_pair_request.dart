// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_key_pair_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/key_format.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/key_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/tag_specification.dart';

part 'create_key_pair_request.g.dart';

abstract class CreateKeyPairRequest
    with
        _i1.HttpInput<CreateKeyPairRequest>,
        _i2.AWSEquatable<CreateKeyPairRequest>
    implements Built<CreateKeyPairRequest, CreateKeyPairRequestBuilder> {
  factory CreateKeyPairRequest({
    String? keyName,
    bool? dryRun,
    KeyType? keyType,
    List<TagSpecification>? tagSpecifications,
    KeyFormat? keyFormat,
  }) {
    dryRun ??= false;
    return _$CreateKeyPairRequest._(
      keyName: keyName,
      dryRun: dryRun,
      keyType: keyType,
      tagSpecifications:
          tagSpecifications == null ? null : _i3.BuiltList(tagSpecifications),
      keyFormat: keyFormat,
    );
  }

  factory CreateKeyPairRequest.build(
          [void Function(CreateKeyPairRequestBuilder) updates]) =
      _$CreateKeyPairRequest;

  const CreateKeyPairRequest._();

  factory CreateKeyPairRequest.fromRequest(
    CreateKeyPairRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<CreateKeyPairRequest>> serializers = [
    CreateKeyPairRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateKeyPairRequestBuilder b) {
    b.dryRun = false;
  }

  /// A unique name for the key pair.
  ///
  /// Constraints: Up to 255 ASCII characters
  String? get keyName;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The type of key pair. Note that ED25519 keys are not supported for Windows instances.
  ///
  /// Default: `rsa`
  KeyType? get keyType;

  /// The tags to apply to the new key pair.
  _i3.BuiltList<TagSpecification>? get tagSpecifications;

  /// The format of the key pair.
  ///
  /// Default: `pem`
  KeyFormat? get keyFormat;
  @override
  CreateKeyPairRequest getPayload() => this;
  @override
  List<Object?> get props => [
        keyName,
        dryRun,
        keyType,
        tagSpecifications,
        keyFormat,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateKeyPairRequest')
      ..add(
        'keyName',
        keyName,
      )
      ..add(
        'dryRun',
        dryRun,
      )
      ..add(
        'keyType',
        keyType,
      )
      ..add(
        'tagSpecifications',
        tagSpecifications,
      )
      ..add(
        'keyFormat',
        keyFormat,
      );
    return helper.toString();
  }
}

class CreateKeyPairRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<CreateKeyPairRequest> {
  const CreateKeyPairRequestEc2QuerySerializer()
      : super('CreateKeyPairRequest');

  @override
  Iterable<Type> get types => const [
        CreateKeyPairRequest,
        _$CreateKeyPairRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateKeyPairRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateKeyPairRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'KeyName':
          result.keyName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'dryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'KeyType':
          result.keyType = (serializers.deserialize(
            value,
            specifiedType: const FullType(KeyType),
          ) as KeyType);
        case 'TagSpecification':
          result.tagSpecifications.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(TagSpecification)],
            ),
          ) as _i3.BuiltList<TagSpecification>));
        case 'KeyFormat':
          result.keyFormat = (serializers.deserialize(
            value,
            specifiedType: const FullType(KeyFormat),
          ) as KeyFormat);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CreateKeyPairRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'CreateKeyPairRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateKeyPairRequest(
      :keyName,
      :dryRun,
      :keyType,
      :tagSpecifications,
      :keyFormat
    ) = object;
    if (keyName != null) {
      result$
        ..add(const _i1.XmlElementName('KeyName'))
        ..add(serializers.serialize(
          keyName,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (keyType != null) {
      result$
        ..add(const _i1.XmlElementName('KeyType'))
        ..add(serializers.serialize(
          keyType,
          specifiedType: const FullType(KeyType),
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
            _i3.BuiltList,
            [FullType(TagSpecification)],
          ),
        ));
    }
    if (keyFormat != null) {
      result$
        ..add(const _i1.XmlElementName('KeyFormat'))
        ..add(serializers.serialize(
          keyFormat,
          specifiedType: const FullType(KeyFormat),
        ));
    }
    return result$;
  }
}
