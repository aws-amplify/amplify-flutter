// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_security_group_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart';

part 'create_security_group_result.g.dart';

abstract class CreateSecurityGroupResult
    with _i1.AWSEquatable<CreateSecurityGroupResult>
    implements
        Built<CreateSecurityGroupResult, CreateSecurityGroupResultBuilder> {
  factory CreateSecurityGroupResult({
    String? groupId,
    List<Tag>? tags,
  }) {
    return _$CreateSecurityGroupResult._(
      groupId: groupId,
      tags: tags == null ? null : _i2.BuiltList(tags),
    );
  }

  factory CreateSecurityGroupResult.build(
          [void Function(CreateSecurityGroupResultBuilder) updates]) =
      _$CreateSecurityGroupResult;

  const CreateSecurityGroupResult._();

  /// Constructs a [CreateSecurityGroupResult] from a [payload] and [response].
  factory CreateSecurityGroupResult.fromResponse(
    CreateSecurityGroupResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<CreateSecurityGroupResult>>
      serializers = [CreateSecurityGroupResultEc2QuerySerializer()];

  /// The ID of the security group.
  String? get groupId;

  /// The tags assigned to the security group.
  _i2.BuiltList<Tag>? get tags;
  @override
  List<Object?> get props => [
        groupId,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateSecurityGroupResult')
      ..add(
        'groupId',
        groupId,
      )
      ..add(
        'tags',
        tags,
      );
    return helper.toString();
  }
}

class CreateSecurityGroupResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<CreateSecurityGroupResult> {
  const CreateSecurityGroupResultEc2QuerySerializer()
      : super('CreateSecurityGroupResult');

  @override
  Iterable<Type> get types => const [
        CreateSecurityGroupResult,
        _$CreateSecurityGroupResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateSecurityGroupResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateSecurityGroupResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'groupId':
          result.groupId = (serializers.deserialize(
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
    CreateSecurityGroupResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'CreateSecurityGroupResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateSecurityGroupResult(:groupId, :tags) = object;
    if (groupId != null) {
      result$
        ..add(const _i3.XmlElementName('GroupId'))
        ..add(serializers.serialize(
          groupId,
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
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(Tag)],
          ),
        ));
    }
    return result$;
  }
}
