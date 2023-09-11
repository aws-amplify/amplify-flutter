// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.verified_access_instance; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/verified_access_trust_provider_condensed.dart';

part 'verified_access_instance.g.dart';

/// Describes a Verified Access instance.
abstract class VerifiedAccessInstance
    with _i1.AWSEquatable<VerifiedAccessInstance>
    implements Built<VerifiedAccessInstance, VerifiedAccessInstanceBuilder> {
  /// Describes a Verified Access instance.
  factory VerifiedAccessInstance({
    String? verifiedAccessInstanceId,
    String? description,
    List<VerifiedAccessTrustProviderCondensed>? verifiedAccessTrustProviders,
    String? creationTime,
    String? lastUpdatedTime,
    List<Tag>? tags,
  }) {
    return _$VerifiedAccessInstance._(
      verifiedAccessInstanceId: verifiedAccessInstanceId,
      description: description,
      verifiedAccessTrustProviders: verifiedAccessTrustProviders == null
          ? null
          : _i2.BuiltList(verifiedAccessTrustProviders),
      creationTime: creationTime,
      lastUpdatedTime: lastUpdatedTime,
      tags: tags == null ? null : _i2.BuiltList(tags),
    );
  }

  /// Describes a Verified Access instance.
  factory VerifiedAccessInstance.build(
          [void Function(VerifiedAccessInstanceBuilder) updates]) =
      _$VerifiedAccessInstance;

  const VerifiedAccessInstance._();

  static const List<_i3.SmithySerializer<VerifiedAccessInstance>> serializers =
      [VerifiedAccessInstanceEc2QuerySerializer()];

  /// The ID of the Amazon Web Services Verified Access instance.
  String? get verifiedAccessInstanceId;

  /// A description for the Amazon Web Services Verified Access instance.
  String? get description;

  /// The IDs of the Amazon Web Services Verified Access trust providers.
  _i2.BuiltList<VerifiedAccessTrustProviderCondensed>?
      get verifiedAccessTrustProviders;

  /// The creation time.
  String? get creationTime;

  /// The last updated time.
  String? get lastUpdatedTime;

  /// The tags.
  _i2.BuiltList<Tag>? get tags;
  @override
  List<Object?> get props => [
        verifiedAccessInstanceId,
        description,
        verifiedAccessTrustProviders,
        creationTime,
        lastUpdatedTime,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('VerifiedAccessInstance')
      ..add(
        'verifiedAccessInstanceId',
        verifiedAccessInstanceId,
      )
      ..add(
        'description',
        description,
      )
      ..add(
        'verifiedAccessTrustProviders',
        verifiedAccessTrustProviders,
      )
      ..add(
        'creationTime',
        creationTime,
      )
      ..add(
        'lastUpdatedTime',
        lastUpdatedTime,
      )
      ..add(
        'tags',
        tags,
      );
    return helper.toString();
  }
}

class VerifiedAccessInstanceEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<VerifiedAccessInstance> {
  const VerifiedAccessInstanceEc2QuerySerializer()
      : super('VerifiedAccessInstance');

  @override
  Iterable<Type> get types => const [
        VerifiedAccessInstance,
        _$VerifiedAccessInstance,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  VerifiedAccessInstance deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VerifiedAccessInstanceBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'verifiedAccessInstanceId':
          result.verifiedAccessInstanceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'description':
          result.description = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'verifiedAccessTrustProviderSet':
          result.verifiedAccessTrustProviders
              .replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(VerifiedAccessTrustProviderCondensed)],
            ),
          ) as _i2.BuiltList<VerifiedAccessTrustProviderCondensed>));
        case 'creationTime':
          result.creationTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'lastUpdatedTime':
          result.lastUpdatedTime = (serializers.deserialize(
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
    VerifiedAccessInstance object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'VerifiedAccessInstanceResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final VerifiedAccessInstance(
      :verifiedAccessInstanceId,
      :description,
      :verifiedAccessTrustProviders,
      :creationTime,
      :lastUpdatedTime,
      :tags
    ) = object;
    if (verifiedAccessInstanceId != null) {
      result$
        ..add(const _i3.XmlElementName('VerifiedAccessInstanceId'))
        ..add(serializers.serialize(
          verifiedAccessInstanceId,
          specifiedType: const FullType(String),
        ));
    }
    if (description != null) {
      result$
        ..add(const _i3.XmlElementName('Description'))
        ..add(serializers.serialize(
          description,
          specifiedType: const FullType(String),
        ));
    }
    if (verifiedAccessTrustProviders != null) {
      result$
        ..add(const _i3.XmlElementName('VerifiedAccessTrustProviderSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          verifiedAccessTrustProviders,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(VerifiedAccessTrustProviderCondensed)],
          ),
        ));
    }
    if (creationTime != null) {
      result$
        ..add(const _i3.XmlElementName('CreationTime'))
        ..add(serializers.serialize(
          creationTime,
          specifiedType: const FullType(String),
        ));
    }
    if (lastUpdatedTime != null) {
      result$
        ..add(const _i3.XmlElementName('LastUpdatedTime'))
        ..add(serializers.serialize(
          lastUpdatedTime,
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
