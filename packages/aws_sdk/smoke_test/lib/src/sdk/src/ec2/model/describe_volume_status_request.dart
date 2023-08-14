// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_volume_status_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart';

part 'describe_volume_status_request.g.dart';

abstract class DescribeVolumeStatusRequest
    with
        _i1.HttpInput<DescribeVolumeStatusRequest>,
        _i2.AWSEquatable<DescribeVolumeStatusRequest>
    implements
        Built<DescribeVolumeStatusRequest, DescribeVolumeStatusRequestBuilder> {
  factory DescribeVolumeStatusRequest({
    List<Filter>? filters,
    int? maxResults,
    String? nextToken,
    List<String>? volumeIds,
    bool? dryRun,
  }) {
    maxResults ??= 0;
    dryRun ??= false;
    return _$DescribeVolumeStatusRequest._(
      filters: filters == null ? null : _i3.BuiltList(filters),
      maxResults: maxResults,
      nextToken: nextToken,
      volumeIds: volumeIds == null ? null : _i3.BuiltList(volumeIds),
      dryRun: dryRun,
    );
  }

  factory DescribeVolumeStatusRequest.build(
          [void Function(DescribeVolumeStatusRequestBuilder) updates]) =
      _$DescribeVolumeStatusRequest;

  const DescribeVolumeStatusRequest._();

  factory DescribeVolumeStatusRequest.fromRequest(
    DescribeVolumeStatusRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DescribeVolumeStatusRequest>>
      serializers = [DescribeVolumeStatusRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeVolumeStatusRequestBuilder b) {
    b
      ..maxResults = 0
      ..dryRun = false;
  }

  /// The filters.
  ///
  /// *   `action.code` \- The action code for the event (for example, `enable-volume-io`).
  ///
  /// *   `action.description` \- A description of the action.
  ///
  /// *   `action.event-id` \- The event ID associated with the action.
  ///
  /// *   `availability-zone` \- The Availability Zone of the instance.
  ///
  /// *   `event.description` \- A description of the event.
  ///
  /// *   `event.event-id` \- The event ID.
  ///
  /// *   `event.event-type` \- The event type (for `io-enabled`: `passed` | `failed`; for `io-performance`: `io-performance:degraded` | `io-performance:severely-degraded` | `io-performance:stalled`).
  ///
  /// *   `event.not-after` \- The latest end time for the event.
  ///
  /// *   `event.not-before` \- The earliest start time for the event.
  ///
  /// *   `volume-status.details-name` \- The cause for `volume-status.status` (`io-enabled` | `io-performance`).
  ///
  /// *   `volume-status.details-status` \- The status of `volume-status.details-name` (for `io-enabled`: `passed` | `failed`; for `io-performance`: `normal` | `degraded` | `severely-degraded` | `stalled`).
  ///
  /// *   `volume-status.status` \- The status of the volume (`ok` | `impaired` | `warning` | `insufficient-data`).
  _i3.BuiltList<Filter>? get filters;

  /// The maximum number of items to return for this request. To get the next page of items, make another request with the token returned in the output. This value can be between 5 and 1,000; if the value is larger than 1,000, only 1,000 results are returned. If this parameter is not used, then all items are returned. You cannot specify this parameter and the volume IDs parameter in the same request. For more information, see [Pagination](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html#api-pagination).
  int get maxResults;

  /// The token returned from a previous paginated request. Pagination continues from the end of the items returned by the previous request.
  String? get nextToken;

  /// The IDs of the volumes.
  ///
  /// Default: Describes all your volumes.
  _i3.BuiltList<String>? get volumeIds;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  DescribeVolumeStatusRequest getPayload() => this;
  @override
  List<Object?> get props => [
        filters,
        maxResults,
        nextToken,
        volumeIds,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeVolumeStatusRequest')
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
      )
      ..add(
        'volumeIds',
        volumeIds,
      )
      ..add(
        'dryRun',
        dryRun,
      );
    return helper.toString();
  }
}

class DescribeVolumeStatusRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DescribeVolumeStatusRequest> {
  const DescribeVolumeStatusRequestEc2QuerySerializer()
      : super('DescribeVolumeStatusRequest');

  @override
  Iterable<Type> get types => const [
        DescribeVolumeStatusRequest,
        _$DescribeVolumeStatusRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeVolumeStatusRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeVolumeStatusRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
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
        case 'VolumeId':
          result.volumeIds.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'VolumeId',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
        case 'dryRun':
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
    DescribeVolumeStatusRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DescribeVolumeStatusRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeVolumeStatusRequest(
      :filters,
      :maxResults,
      :nextToken,
      :volumeIds,
      :dryRun
    ) = object;
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
    if (volumeIds != null) {
      result$
        ..add(const _i1.XmlElementName('VolumeId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'VolumeId',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          volumeIds,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(String)],
          ),
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
