// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.list_images_in_recycle_bin_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'list_images_in_recycle_bin_request.g.dart';

abstract class ListImagesInRecycleBinRequest
    with
        _i1.HttpInput<ListImagesInRecycleBinRequest>,
        _i2.AWSEquatable<ListImagesInRecycleBinRequest>
    implements
        Built<ListImagesInRecycleBinRequest,
            ListImagesInRecycleBinRequestBuilder> {
  factory ListImagesInRecycleBinRequest({
    List<String>? imageIds,
    String? nextToken,
    int? maxResults,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$ListImagesInRecycleBinRequest._(
      imageIds: imageIds == null ? null : _i3.BuiltList(imageIds),
      nextToken: nextToken,
      maxResults: maxResults,
      dryRun: dryRun,
    );
  }

  factory ListImagesInRecycleBinRequest.build(
          [void Function(ListImagesInRecycleBinRequestBuilder) updates]) =
      _$ListImagesInRecycleBinRequest;

  const ListImagesInRecycleBinRequest._();

  factory ListImagesInRecycleBinRequest.fromRequest(
    ListImagesInRecycleBinRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<ListImagesInRecycleBinRequest>>
      serializers = [ListImagesInRecycleBinRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListImagesInRecycleBinRequestBuilder b) {
    b.dryRun = false;
  }

  /// The IDs of the AMIs to list. Omit this parameter to list all of the AMIs that are in the Recycle Bin. You can specify up to 20 IDs in a single request.
  _i3.BuiltList<String>? get imageIds;

  /// The token returned from a previous paginated request. Pagination continues from the end of the items returned by the previous request.
  String? get nextToken;

  /// The maximum number of items to return for this request. To get the next page of items, make another request with the token returned in the output. For more information, see [Pagination](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html#api-pagination).
  int? get maxResults;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  ListImagesInRecycleBinRequest getPayload() => this;
  @override
  List<Object?> get props => [
        imageIds,
        nextToken,
        maxResults,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ListImagesInRecycleBinRequest')
      ..add(
        'imageIds',
        imageIds,
      )
      ..add(
        'nextToken',
        nextToken,
      )
      ..add(
        'maxResults',
        maxResults,
      )
      ..add(
        'dryRun',
        dryRun,
      );
    return helper.toString();
  }
}

class ListImagesInRecycleBinRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<ListImagesInRecycleBinRequest> {
  const ListImagesInRecycleBinRequestEc2QuerySerializer()
      : super('ListImagesInRecycleBinRequest');

  @override
  Iterable<Type> get types => const [
        ListImagesInRecycleBinRequest,
        _$ListImagesInRecycleBinRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ListImagesInRecycleBinRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListImagesInRecycleBinRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ImageId':
          result.imageIds.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'ImageId',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
        case 'NextToken':
          result.nextToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'MaxResults':
          result.maxResults = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ListImagesInRecycleBinRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'ListImagesInRecycleBinRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ListImagesInRecycleBinRequest(
      :imageIds,
      :nextToken,
      :maxResults,
      :dryRun
    ) = object;
    if (imageIds != null) {
      result$
        ..add(const _i1.XmlElementName('ImageId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'ImageId',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          imageIds,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (nextToken != null) {
      result$
        ..add(const _i1.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    if (maxResults != null) {
      result$
        ..add(const _i1.XmlElementName('MaxResults'))
        ..add(serializers.serialize(
          maxResults,
          specifiedType: const FullType.nullable(int),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
