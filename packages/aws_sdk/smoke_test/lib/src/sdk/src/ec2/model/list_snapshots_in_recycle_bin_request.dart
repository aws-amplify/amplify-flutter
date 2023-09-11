// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.list_snapshots_in_recycle_bin_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'list_snapshots_in_recycle_bin_request.g.dart';

abstract class ListSnapshotsInRecycleBinRequest
    with
        _i1.HttpInput<ListSnapshotsInRecycleBinRequest>,
        _i2.AWSEquatable<ListSnapshotsInRecycleBinRequest>
    implements
        Built<ListSnapshotsInRecycleBinRequest,
            ListSnapshotsInRecycleBinRequestBuilder> {
  factory ListSnapshotsInRecycleBinRequest({
    int? maxResults,
    String? nextToken,
    List<String>? snapshotIds,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$ListSnapshotsInRecycleBinRequest._(
      maxResults: maxResults,
      nextToken: nextToken,
      snapshotIds: snapshotIds == null ? null : _i3.BuiltList(snapshotIds),
      dryRun: dryRun,
    );
  }

  factory ListSnapshotsInRecycleBinRequest.build(
          [void Function(ListSnapshotsInRecycleBinRequestBuilder) updates]) =
      _$ListSnapshotsInRecycleBinRequest;

  const ListSnapshotsInRecycleBinRequest._();

  factory ListSnapshotsInRecycleBinRequest.fromRequest(
    ListSnapshotsInRecycleBinRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<ListSnapshotsInRecycleBinRequest>>
      serializers = [ListSnapshotsInRecycleBinRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListSnapshotsInRecycleBinRequestBuilder b) {
    b.dryRun = false;
  }

  /// The maximum number of items to return for this request. To get the next page of items, make another request with the token returned in the output. For more information, see [Pagination](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html#api-pagination).
  int? get maxResults;

  /// The token returned from a previous paginated request. Pagination continues from the end of the items returned by the previous request.
  String? get nextToken;

  /// The IDs of the snapshots to list. Omit this parameter to list all of the snapshots that are in the Recycle Bin.
  _i3.BuiltList<String>? get snapshotIds;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  ListSnapshotsInRecycleBinRequest getPayload() => this;
  @override
  List<Object?> get props => [
        maxResults,
        nextToken,
        snapshotIds,
        dryRun,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ListSnapshotsInRecycleBinRequest')
          ..add(
            'maxResults',
            maxResults,
          )
          ..add(
            'nextToken',
            nextToken,
          )
          ..add(
            'snapshotIds',
            snapshotIds,
          )
          ..add(
            'dryRun',
            dryRun,
          );
    return helper.toString();
  }
}

class ListSnapshotsInRecycleBinRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<ListSnapshotsInRecycleBinRequest> {
  const ListSnapshotsInRecycleBinRequestEc2QuerySerializer()
      : super('ListSnapshotsInRecycleBinRequest');

  @override
  Iterable<Type> get types => const [
        ListSnapshotsInRecycleBinRequest,
        _$ListSnapshotsInRecycleBinRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ListSnapshotsInRecycleBinRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListSnapshotsInRecycleBinRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
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
        case 'SnapshotId':
          result.snapshotIds.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'SnapshotId',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
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
    ListSnapshotsInRecycleBinRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'ListSnapshotsInRecycleBinRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ListSnapshotsInRecycleBinRequest(
      :maxResults,
      :nextToken,
      :snapshotIds,
      :dryRun
    ) = object;
    if (maxResults != null) {
      result$
        ..add(const _i1.XmlElementName('MaxResults'))
        ..add(serializers.serialize(
          maxResults,
          specifiedType: const FullType(int),
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
    if (snapshotIds != null) {
      result$
        ..add(const _i1.XmlElementName('SnapshotId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'SnapshotId',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          snapshotIds,
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
    return result$;
  }
}
