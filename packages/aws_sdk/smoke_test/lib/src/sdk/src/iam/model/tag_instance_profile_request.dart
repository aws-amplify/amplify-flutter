// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.tag_instance_profile_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/iam/model/tag.dart' as _i3;

part 'tag_instance_profile_request.g.dart';

abstract class TagInstanceProfileRequest
    with
        _i1.HttpInput<TagInstanceProfileRequest>,
        _i2.AWSEquatable<TagInstanceProfileRequest>
    implements
        Built<TagInstanceProfileRequest, TagInstanceProfileRequestBuilder> {
  factory TagInstanceProfileRequest({
    required String instanceProfileName,
    required List<_i3.Tag> tags,
  }) {
    return _$TagInstanceProfileRequest._(
      instanceProfileName: instanceProfileName,
      tags: _i4.BuiltList(tags),
    );
  }

  factory TagInstanceProfileRequest.build(
          [void Function(TagInstanceProfileRequestBuilder) updates]) =
      _$TagInstanceProfileRequest;

  const TagInstanceProfileRequest._();

  factory TagInstanceProfileRequest.fromRequest(
    TagInstanceProfileRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<TagInstanceProfileRequest>>
      serializers = [TagInstanceProfileRequestAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TagInstanceProfileRequestBuilder b) {}

  /// The name of the IAM instance profile to which you want to add tags.
  ///
  /// This parameter allows (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
  String get instanceProfileName;

  /// The list of tags that you want to attach to the IAM instance profile. Each tag consists of a key name and an associated value.
  _i4.BuiltList<_i3.Tag> get tags;
  @override
  TagInstanceProfileRequest getPayload() => this;
  @override
  List<Object?> get props => [
        instanceProfileName,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TagInstanceProfileRequest')
      ..add(
        'instanceProfileName',
        instanceProfileName,
      )
      ..add(
        'tags',
        tags,
      );
    return helper.toString();
  }
}

class TagInstanceProfileRequestAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<TagInstanceProfileRequest> {
  const TagInstanceProfileRequestAwsQuerySerializer()
      : super('TagInstanceProfileRequest');

  @override
  Iterable<Type> get types => const [
        TagInstanceProfileRequest,
        _$TagInstanceProfileRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  TagInstanceProfileRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TagInstanceProfileRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'InstanceProfileName':
          result.instanceProfileName = (serializers.deserialize(
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
    TagInstanceProfileRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'TagInstanceProfileRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final TagInstanceProfileRequest(:instanceProfileName, :tags) = object;
    result$
      ..add(const _i1.XmlElementName('InstanceProfileName'))
      ..add(serializers.serialize(
        instanceProfileName,
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
