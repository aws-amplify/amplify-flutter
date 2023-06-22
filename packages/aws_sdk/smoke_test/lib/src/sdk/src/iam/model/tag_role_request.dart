// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.tag_role_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/iam/model/tag.dart' as _i3;

part 'tag_role_request.g.dart';

abstract class TagRoleRequest
    with _i1.HttpInput<TagRoleRequest>, _i2.AWSEquatable<TagRoleRequest>
    implements Built<TagRoleRequest, TagRoleRequestBuilder> {
  factory TagRoleRequest({
    required String roleName,
    required List<_i3.Tag> tags,
  }) {
    return _$TagRoleRequest._(
      roleName: roleName,
      tags: _i4.BuiltList(tags),
    );
  }

  factory TagRoleRequest.build([void Function(TagRoleRequestBuilder) updates]) =
      _$TagRoleRequest;

  const TagRoleRequest._();

  factory TagRoleRequest.fromRequest(
    TagRoleRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<TagRoleRequest>> serializers = [
    TagRoleRequestAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TagRoleRequestBuilder b) {}

  /// The name of the IAM role to which you want to add tags.
  ///
  /// This parameter accepts (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters that consist of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
  String get roleName;

  /// The list of tags that you want to attach to the IAM role. Each tag consists of a key name and an associated value.
  _i4.BuiltList<_i3.Tag> get tags;
  @override
  TagRoleRequest getPayload() => this;
  @override
  List<Object?> get props => [
        roleName,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TagRoleRequest')
      ..add(
        'roleName',
        roleName,
      )
      ..add(
        'tags',
        tags,
      );
    return helper.toString();
  }
}

class TagRoleRequestAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<TagRoleRequest> {
  const TagRoleRequestAwsQuerySerializer() : super('TagRoleRequest');

  @override
  Iterable<Type> get types => const [
        TagRoleRequest,
        _$TagRoleRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  TagRoleRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TagRoleRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'RoleName':
          result.roleName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Tags':
          result.tags.replace((const _i1.XmlBuiltListSerializer(
                  indexer: _i1.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(_i3.Tag)],
            ),
          ) as _i4.BuiltList<_i3.Tag>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    TagRoleRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'TagRoleRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final TagRoleRequest(:roleName, :tags) = object;
    result$
      ..add(const _i1.XmlElementName('RoleName'))
      ..add(serializers.serialize(
        roleName,
        specifiedType: const FullType(String),
      ));
    result$
      ..add(const _i1.XmlElementName('Tags'))
      ..add(
          const _i1.XmlBuiltListSerializer(indexer: _i1.XmlIndexer.awsQueryList)
              .serialize(
        serializers,
        tags,
        specifiedType: const FullType.nullable(
          _i4.BuiltList,
          [FullType(_i3.Tag)],
        ),
      ));
    return result$;
  }
}
