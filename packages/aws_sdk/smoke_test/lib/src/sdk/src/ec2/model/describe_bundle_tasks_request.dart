// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_bundle_tasks_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart';

part 'describe_bundle_tasks_request.g.dart';

abstract class DescribeBundleTasksRequest
    with
        _i1.HttpInput<DescribeBundleTasksRequest>,
        _i2.AWSEquatable<DescribeBundleTasksRequest>
    implements
        Built<DescribeBundleTasksRequest, DescribeBundleTasksRequestBuilder> {
  factory DescribeBundleTasksRequest({
    List<String>? bundleIds,
    List<Filter>? filters,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$DescribeBundleTasksRequest._(
      bundleIds: bundleIds == null ? null : _i3.BuiltList(bundleIds),
      filters: filters == null ? null : _i3.BuiltList(filters),
      dryRun: dryRun,
    );
  }

  factory DescribeBundleTasksRequest.build(
          [void Function(DescribeBundleTasksRequestBuilder) updates]) =
      _$DescribeBundleTasksRequest;

  const DescribeBundleTasksRequest._();

  factory DescribeBundleTasksRequest.fromRequest(
    DescribeBundleTasksRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DescribeBundleTasksRequest>>
      serializers = [DescribeBundleTasksRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeBundleTasksRequestBuilder b) {
    b.dryRun = false;
  }

  /// The bundle task IDs.
  ///
  /// Default: Describes all your bundle tasks.
  _i3.BuiltList<String>? get bundleIds;

  /// The filters.
  ///
  /// *   `bundle-id` \- The ID of the bundle task.
  ///
  /// *   `error-code` \- If the task failed, the error code returned.
  ///
  /// *   `error-message` \- If the task failed, the error message returned.
  ///
  /// *   `instance-id` \- The ID of the instance.
  ///
  /// *   `progress` \- The level of task completion, as a percentage (for example, 20%).
  ///
  /// *   `s3-bucket` \- The Amazon S3 bucket to store the AMI.
  ///
  /// *   `s3-prefix` \- The beginning of the AMI name.
  ///
  /// *   `start-time` \- The time the task started (for example, 2013-09-15T17:15:20.000Z).
  ///
  /// *   `state` \- The state of the task (`pending` | `waiting-for-shutdown` | `bundling` | `storing` | `cancelling` | `complete` | `failed`).
  ///
  /// *   `update-time` \- The time of the most recent update for the task.
  _i3.BuiltList<Filter>? get filters;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  DescribeBundleTasksRequest getPayload() => this;
  @override
  List<Object?> get props => [
        bundleIds,
        filters,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeBundleTasksRequest')
      ..add(
        'bundleIds',
        bundleIds,
      )
      ..add(
        'filters',
        filters,
      )
      ..add(
        'dryRun',
        dryRun,
      );
    return helper.toString();
  }
}

class DescribeBundleTasksRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DescribeBundleTasksRequest> {
  const DescribeBundleTasksRequestEc2QuerySerializer()
      : super('DescribeBundleTasksRequest');

  @override
  Iterable<Type> get types => const [
        DescribeBundleTasksRequest,
        _$DescribeBundleTasksRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeBundleTasksRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeBundleTasksRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'BundleId':
          result.bundleIds.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'BundleId',
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
    DescribeBundleTasksRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DescribeBundleTasksRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeBundleTasksRequest(:bundleIds, :filters, :dryRun) = object;
    if (bundleIds != null) {
      result$
        ..add(const _i1.XmlElementName('BundleId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'BundleId',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          bundleIds,
          specifiedType: const FullType(
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
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(Filter)],
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
