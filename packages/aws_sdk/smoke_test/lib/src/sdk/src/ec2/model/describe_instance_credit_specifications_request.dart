// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_instance_credit_specifications_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart';

part 'describe_instance_credit_specifications_request.g.dart';

abstract class DescribeInstanceCreditSpecificationsRequest
    with
        _i1.HttpInput<DescribeInstanceCreditSpecificationsRequest>,
        _i2.AWSEquatable<DescribeInstanceCreditSpecificationsRequest>
    implements
        Built<DescribeInstanceCreditSpecificationsRequest,
            DescribeInstanceCreditSpecificationsRequestBuilder> {
  factory DescribeInstanceCreditSpecificationsRequest({
    bool? dryRun,
    List<Filter>? filters,
    List<String>? instanceIds,
    int? maxResults,
    String? nextToken,
  }) {
    dryRun ??= false;
    maxResults ??= 0;
    return _$DescribeInstanceCreditSpecificationsRequest._(
      dryRun: dryRun,
      filters: filters == null ? null : _i3.BuiltList(filters),
      instanceIds: instanceIds == null ? null : _i3.BuiltList(instanceIds),
      maxResults: maxResults,
      nextToken: nextToken,
    );
  }

  factory DescribeInstanceCreditSpecificationsRequest.build(
      [void Function(DescribeInstanceCreditSpecificationsRequestBuilder)
          updates]) = _$DescribeInstanceCreditSpecificationsRequest;

  const DescribeInstanceCreditSpecificationsRequest._();

  factory DescribeInstanceCreditSpecificationsRequest.fromRequest(
    DescribeInstanceCreditSpecificationsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1.SmithySerializer<DescribeInstanceCreditSpecificationsRequest>>
      serializers = [
    DescribeInstanceCreditSpecificationsRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeInstanceCreditSpecificationsRequestBuilder b) {
    b
      ..dryRun = false
      ..maxResults = 0;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The filters.
  ///
  /// *   `instance-id` \- The ID of the instance.
  _i3.BuiltList<Filter>? get filters;

  /// The instance IDs.
  ///
  /// Default: Describes all your instances.
  ///
  /// Constraints: Maximum 1000 explicitly specified instance IDs.
  _i3.BuiltList<String>? get instanceIds;

  /// The maximum number of items to return for this request. To get the next page of items, make another request with the token returned in the output. For more information, see [Pagination](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html#api-pagination).
  ///
  /// You cannot specify this parameter and the instance IDs parameter in the same call.
  int get maxResults;

  /// The token returned from a previous paginated request. Pagination continues from the end of the items returned by the previous request.
  String? get nextToken;
  @override
  DescribeInstanceCreditSpecificationsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        filters,
        instanceIds,
        maxResults,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DescribeInstanceCreditSpecificationsRequest')
      ..add(
        'dryRun',
        dryRun,
      )
      ..add(
        'filters',
        filters,
      )
      ..add(
        'instanceIds',
        instanceIds,
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

class DescribeInstanceCreditSpecificationsRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<DescribeInstanceCreditSpecificationsRequest> {
  const DescribeInstanceCreditSpecificationsRequestEc2QuerySerializer()
      : super('DescribeInstanceCreditSpecificationsRequest');

  @override
  Iterable<Type> get types => const [
        DescribeInstanceCreditSpecificationsRequest,
        _$DescribeInstanceCreditSpecificationsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeInstanceCreditSpecificationsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeInstanceCreditSpecificationsRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
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
        case 'InstanceId':
          result.instanceIds.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'InstanceId',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
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
    DescribeInstanceCreditSpecificationsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DescribeInstanceCreditSpecificationsRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeInstanceCreditSpecificationsRequest(
      :dryRun,
      :filters,
      :instanceIds,
      :maxResults,
      :nextToken
    ) = object;
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
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
    if (instanceIds != null) {
      result$
        ..add(const _i1.XmlElementName('InstanceId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'InstanceId',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          instanceIds,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(String)],
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
