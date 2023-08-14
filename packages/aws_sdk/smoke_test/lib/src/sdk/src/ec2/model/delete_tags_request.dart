// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.delete_tags_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart';

part 'delete_tags_request.g.dart';

abstract class DeleteTagsRequest
    with _i1.HttpInput<DeleteTagsRequest>, _i2.AWSEquatable<DeleteTagsRequest>
    implements Built<DeleteTagsRequest, DeleteTagsRequestBuilder> {
  factory DeleteTagsRequest({
    bool? dryRun,
    List<String>? resources,
    List<Tag>? tags,
  }) {
    dryRun ??= false;
    return _$DeleteTagsRequest._(
      dryRun: dryRun,
      resources: resources == null ? null : _i3.BuiltList(resources),
      tags: tags == null ? null : _i3.BuiltList(tags),
    );
  }

  factory DeleteTagsRequest.build(
      [void Function(DeleteTagsRequestBuilder) updates]) = _$DeleteTagsRequest;

  const DeleteTagsRequest._();

  factory DeleteTagsRequest.fromRequest(
    DeleteTagsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DeleteTagsRequest>> serializers = [
    DeleteTagsRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteTagsRequestBuilder b) {
    b.dryRun = false;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The IDs of the resources, separated by spaces.
  ///
  /// Constraints: Up to 1000 resource IDs. We recommend breaking up this request into smaller batches.
  _i3.BuiltList<String>? get resources;

  /// The tags to delete. Specify a tag key and an optional tag value to delete specific tags. If you specify a tag key without a tag value, we delete any tag with this key regardless of its value. If you specify a tag key with an empty string as the tag value, we delete the tag only if its value is an empty string.
  ///
  /// If you omit this parameter, we delete all user-defined tags for the specified resources. We do not delete Amazon Web Services-generated tags (tags that have the `aws:` prefix).
  ///
  /// Constraints: Up to 1000 tags.
  _i3.BuiltList<Tag>? get tags;
  @override
  DeleteTagsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        resources,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteTagsRequest')
      ..add(
        'dryRun',
        dryRun,
      )
      ..add(
        'resources',
        resources,
      )
      ..add(
        'tags',
        tags,
      );
    return helper.toString();
  }
}

class DeleteTagsRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DeleteTagsRequest> {
  const DeleteTagsRequestEc2QuerySerializer() : super('DeleteTagsRequest');

  @override
  Iterable<Type> get types => const [
        DeleteTagsRequest,
        _$DeleteTagsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteTagsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteTagsRequestBuilder();
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
        case 'resourceId':
          result.resources.replace((const _i1.XmlBuiltListSerializer(
                  indexer: _i1.XmlIndexer.ec2QueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
        case 'tag':
          result.tags.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(Tag)],
            ),
          ) as _i3.BuiltList<Tag>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DeleteTagsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DeleteTagsRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DeleteTagsRequest(:dryRun, :resources, :tags) = object;
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (resources != null) {
      result$
        ..add(const _i1.XmlElementName('ResourceId'))
        ..add(const _i1.XmlBuiltListSerializer(
                indexer: _i1.XmlIndexer.ec2QueryList)
            .serialize(
          serializers,
          resources,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (tags != null) {
      result$
        ..add(const _i1.XmlElementName('Tag'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          tags,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(Tag)],
          ),
        ));
    }
    return result$;
  }
}
