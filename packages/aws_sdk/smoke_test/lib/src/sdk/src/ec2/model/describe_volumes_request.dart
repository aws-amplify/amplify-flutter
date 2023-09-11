// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_volumes_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart';

part 'describe_volumes_request.g.dart';

abstract class DescribeVolumesRequest
    with
        _i1.HttpInput<DescribeVolumesRequest>,
        _i2.AWSEquatable<DescribeVolumesRequest>
    implements Built<DescribeVolumesRequest, DescribeVolumesRequestBuilder> {
  factory DescribeVolumesRequest({
    List<Filter>? filters,
    List<String>? volumeIds,
    bool? dryRun,
    int? maxResults,
    String? nextToken,
  }) {
    dryRun ??= false;
    maxResults ??= 0;
    return _$DescribeVolumesRequest._(
      filters: filters == null ? null : _i3.BuiltList(filters),
      volumeIds: volumeIds == null ? null : _i3.BuiltList(volumeIds),
      dryRun: dryRun,
      maxResults: maxResults,
      nextToken: nextToken,
    );
  }

  factory DescribeVolumesRequest.build(
          [void Function(DescribeVolumesRequestBuilder) updates]) =
      _$DescribeVolumesRequest;

  const DescribeVolumesRequest._();

  factory DescribeVolumesRequest.fromRequest(
    DescribeVolumesRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DescribeVolumesRequest>> serializers =
      [DescribeVolumesRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeVolumesRequestBuilder b) {
    b
      ..dryRun = false
      ..maxResults = 0;
  }

  /// The filters.
  ///
  /// *   `attachment.attach-time` \- The time stamp when the attachment initiated.
  ///
  /// *   `attachment.delete-on-termination` \- Whether the volume is deleted on instance termination.
  ///
  /// *   `attachment.device` \- The device name specified in the block device mapping (for example, `/dev/sda1`).
  ///
  /// *   `attachment.instance-id` \- The ID of the instance the volume is attached to.
  ///
  /// *   `attachment.status` \- The attachment state (`attaching` | `attached` | `detaching`).
  ///
  /// *   `availability-zone` \- The Availability Zone in which the volume was created.
  ///
  /// *   `create-time` \- The time stamp when the volume was created.
  ///
  /// *   `encrypted` \- Indicates whether the volume is encrypted (`true` | `false`)
  ///
  /// *   `multi-attach-enabled` \- Indicates whether the volume is enabled for Multi-Attach (`true` | `false`)
  ///
  /// *   `fast-restored` \- Indicates whether the volume was created from a snapshot that is enabled for fast snapshot restore (`true` | `false`).
  ///
  /// *   `size` \- The size of the volume, in GiB.
  ///
  /// *   `snapshot-id` \- The snapshot from which the volume was created.
  ///
  /// *   `status` \- The state of the volume (`creating` | `available` | `in-use` | `deleting` | `deleted` | `error`).
  ///
  /// *   `tag`: \- The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key `Owner` and the value `TeamA`, specify `tag:Owner` for the filter name and `TeamA` for the filter value.
  ///
  /// *   `tag-key` \- The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.
  ///
  /// *   `volume-id` \- The volume ID.
  ///
  /// *   `volume-type` \- The Amazon EBS volume type (`gp2` | `gp3` | `io1` | `io2` | `st1` | `sc1`| `standard`)
  _i3.BuiltList<Filter>? get filters;

  /// The volume IDs.
  _i3.BuiltList<String>? get volumeIds;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The maximum number of volumes to return for this request. This value can be between 5 and 500; if you specify a value larger than 500, only 500 items are returned. If this parameter is not used, then all items are returned. You cannot specify this parameter and the volume IDs parameter in the same request. For more information, see [Pagination](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html#api-pagination).
  int get maxResults;

  /// The token returned from a previous paginated request. Pagination continues from the end of the items returned from the previous request.
  String? get nextToken;
  @override
  DescribeVolumesRequest getPayload() => this;
  @override
  List<Object?> get props => [
        filters,
        volumeIds,
        dryRun,
        maxResults,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeVolumesRequest')
      ..add(
        'filters',
        filters,
      )
      ..add(
        'volumeIds',
        volumeIds,
      )
      ..add(
        'dryRun',
        dryRun,
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

class DescribeVolumesRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DescribeVolumesRequest> {
  const DescribeVolumesRequestEc2QuerySerializer()
      : super('DescribeVolumesRequest');

  @override
  Iterable<Type> get types => const [
        DescribeVolumesRequest,
        _$DescribeVolumesRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeVolumesRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeVolumesRequestBuilder();
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
        case 'maxResults':
          result.maxResults = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'nextToken':
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
    DescribeVolumesRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DescribeVolumesRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeVolumesRequest(
      :filters,
      :volumeIds,
      :dryRun,
      :maxResults,
      :nextToken
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
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(Filter)],
          ),
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
          specifiedType: const FullType(
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
