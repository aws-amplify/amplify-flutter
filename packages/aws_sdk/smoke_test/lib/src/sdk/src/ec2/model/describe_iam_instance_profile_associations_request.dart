// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_iam_instance_profile_associations_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart';

part 'describe_iam_instance_profile_associations_request.g.dart';

abstract class DescribeIamInstanceProfileAssociationsRequest
    with
        _i1.HttpInput<DescribeIamInstanceProfileAssociationsRequest>,
        _i2.AWSEquatable<DescribeIamInstanceProfileAssociationsRequest>
    implements
        Built<DescribeIamInstanceProfileAssociationsRequest,
            DescribeIamInstanceProfileAssociationsRequestBuilder> {
  factory DescribeIamInstanceProfileAssociationsRequest({
    List<String>? associationIds,
    List<Filter>? filters,
    int? maxResults,
    String? nextToken,
  }) {
    maxResults ??= 0;
    return _$DescribeIamInstanceProfileAssociationsRequest._(
      associationIds:
          associationIds == null ? null : _i3.BuiltList(associationIds),
      filters: filters == null ? null : _i3.BuiltList(filters),
      maxResults: maxResults,
      nextToken: nextToken,
    );
  }

  factory DescribeIamInstanceProfileAssociationsRequest.build(
      [void Function(DescribeIamInstanceProfileAssociationsRequestBuilder)
          updates]) = _$DescribeIamInstanceProfileAssociationsRequest;

  const DescribeIamInstanceProfileAssociationsRequest._();

  factory DescribeIamInstanceProfileAssociationsRequest.fromRequest(
    DescribeIamInstanceProfileAssociationsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1.SmithySerializer<DescribeIamInstanceProfileAssociationsRequest>>
      serializers = [
    DescribeIamInstanceProfileAssociationsRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeIamInstanceProfileAssociationsRequestBuilder b) {
    b.maxResults = 0;
  }

  /// The IAM instance profile associations.
  _i3.BuiltList<String>? get associationIds;

  /// The filters.
  ///
  /// *   `instance-id` \- The ID of the instance.
  ///
  /// *   `state` \- The state of the association (`associating` | `associated` | `disassociating`).
  _i3.BuiltList<Filter>? get filters;

  /// The maximum number of items to return for this request. To get the next page of items, make another request with the token returned in the output. For more information, see [Pagination](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html#api-pagination).
  int get maxResults;

  /// The token returned from a previous paginated request. Pagination continues from the end of the items returned by the previous request.
  String? get nextToken;
  @override
  DescribeIamInstanceProfileAssociationsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        associationIds,
        filters,
        maxResults,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DescribeIamInstanceProfileAssociationsRequest')
      ..add(
        'associationIds',
        associationIds,
      )
      ..add(
        'filters',
        filters,
      )
      ..add(
        'maxResults',
        maxResults,
      )
      ..add(
        'nextToken',
        nextToken,
      );
    return helper.toString();
  }
}

class DescribeIamInstanceProfileAssociationsRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<
        DescribeIamInstanceProfileAssociationsRequest> {
  const DescribeIamInstanceProfileAssociationsRequestEc2QuerySerializer()
      : super('DescribeIamInstanceProfileAssociationsRequest');

  @override
  Iterable<Type> get types => const [
        DescribeIamInstanceProfileAssociationsRequest,
        _$DescribeIamInstanceProfileAssociationsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeIamInstanceProfileAssociationsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeIamInstanceProfileAssociationsRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'AssociationId':
          result.associationIds.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'AssociationId',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
        case 'Filter':
          result.filters.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'Filter',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(Filter)],
            ),
          ) as _i3.BuiltList<Filter>));
        case 'MaxResults':
          result.maxResults = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'NextToken':
          result.nextToken = (serializers.deserialize(
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
    DescribeIamInstanceProfileAssociationsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DescribeIamInstanceProfileAssociationsRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeIamInstanceProfileAssociationsRequest(
      :associationIds,
      :filters,
      :maxResults,
      :nextToken
    ) = object;
    if (associationIds != null) {
      result$
        ..add(const _i1.XmlElementName('AssociationId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'AssociationId',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          associationIds,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (filters != null) {
      result$
        ..add(const _i1.XmlElementName('Filter'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'Filter',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          filters,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(Filter)],
          ),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('MaxResults'))
      ..add(serializers.serialize(
        maxResults,
        specifiedType: const FullType(int),
      ));
    if (nextToken != null) {
      result$
        ..add(const _i1.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
