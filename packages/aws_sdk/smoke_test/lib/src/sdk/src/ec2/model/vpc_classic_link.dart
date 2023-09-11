// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.vpc_classic_link; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart';

part 'vpc_classic_link.g.dart';

/// Deprecated.
///
/// Describes whether a VPC is enabled for ClassicLink.
abstract class VpcClassicLink
    with _i1.AWSEquatable<VpcClassicLink>
    implements Built<VpcClassicLink, VpcClassicLinkBuilder> {
  /// Deprecated.
  ///
  /// Describes whether a VPC is enabled for ClassicLink.
  factory VpcClassicLink({
    bool? classicLinkEnabled,
    List<Tag>? tags,
    String? vpcId,
  }) {
    classicLinkEnabled ??= false;
    return _$VpcClassicLink._(
      classicLinkEnabled: classicLinkEnabled,
      tags: tags == null ? null : _i2.BuiltList(tags),
      vpcId: vpcId,
    );
  }

  /// Deprecated.
  ///
  /// Describes whether a VPC is enabled for ClassicLink.
  factory VpcClassicLink.build([void Function(VpcClassicLinkBuilder) updates]) =
      _$VpcClassicLink;

  const VpcClassicLink._();

  static const List<_i3.SmithySerializer<VpcClassicLink>> serializers = [
    VpcClassicLinkEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(VpcClassicLinkBuilder b) {
    b.classicLinkEnabled = false;
  }

  /// Indicates whether the VPC is enabled for ClassicLink.
  bool get classicLinkEnabled;

  /// Any tags assigned to the VPC.
  _i2.BuiltList<Tag>? get tags;

  /// The ID of the VPC.
  String? get vpcId;
  @override
  List<Object?> get props => [
        classicLinkEnabled,
        tags,
        vpcId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('VpcClassicLink')
      ..add(
        'classicLinkEnabled',
        classicLinkEnabled,
      )
      ..add(
        'tags',
        tags,
      )
      ..add(
        'vpcId',
        vpcId,
      );
    return helper.toString();
  }
}

class VpcClassicLinkEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<VpcClassicLink> {
  const VpcClassicLinkEc2QuerySerializer() : super('VpcClassicLink');

  @override
  Iterable<Type> get types => const [
        VpcClassicLink,
        _$VpcClassicLink,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  VpcClassicLink deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VpcClassicLinkBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'classicLinkEnabled':
          result.classicLinkEnabled = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
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
        case 'vpcId':
          result.vpcId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    VpcClassicLink object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'VpcClassicLinkResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final VpcClassicLink(:classicLinkEnabled, :tags, :vpcId) = object;
    result$
      ..add(const _i3.XmlElementName('ClassicLinkEnabled'))
      ..add(serializers.serialize(
        classicLinkEnabled,
        specifiedType: const FullType(bool),
      ));
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
    if (vpcId != null) {
      result$
        ..add(const _i3.XmlElementName('VpcId'))
        ..add(serializers.serialize(
          vpcId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
