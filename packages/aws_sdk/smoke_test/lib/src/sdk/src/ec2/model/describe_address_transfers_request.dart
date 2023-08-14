// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_address_transfers_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'describe_address_transfers_request.g.dart';

abstract class DescribeAddressTransfersRequest
    with
        _i1.HttpInput<DescribeAddressTransfersRequest>,
        _i2.AWSEquatable<DescribeAddressTransfersRequest>
    implements
        Built<DescribeAddressTransfersRequest,
            DescribeAddressTransfersRequestBuilder> {
  factory DescribeAddressTransfersRequest({
    List<String>? allocationIds,
    String? nextToken,
    int? maxResults,
    bool? dryRun,
  }) {
    maxResults ??= 0;
    dryRun ??= false;
    return _$DescribeAddressTransfersRequest._(
      allocationIds:
          allocationIds == null ? null : _i3.BuiltList(allocationIds),
      nextToken: nextToken,
      maxResults: maxResults,
      dryRun: dryRun,
    );
  }

  factory DescribeAddressTransfersRequest.build(
          [void Function(DescribeAddressTransfersRequestBuilder) updates]) =
      _$DescribeAddressTransfersRequest;

  const DescribeAddressTransfersRequest._();

  factory DescribeAddressTransfersRequest.fromRequest(
    DescribeAddressTransfersRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DescribeAddressTransfersRequest>>
      serializers = [DescribeAddressTransfersRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeAddressTransfersRequestBuilder b) {
    b
      ..maxResults = 0
      ..dryRun = false;
  }

  /// The allocation IDs of Elastic IP addresses.
  _i3.BuiltList<String>? get allocationIds;

  /// Specify the pagination token from a previous request to retrieve the next page of results.
  String? get nextToken;

  /// The maximum number of address transfers to return in one page of results.
  int get maxResults;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  DescribeAddressTransfersRequest getPayload() => this;
  @override
  List<Object?> get props => [
        allocationIds,
        nextToken,
        maxResults,
        dryRun,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeAddressTransfersRequest')
          ..add(
            'allocationIds',
            allocationIds,
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

class DescribeAddressTransfersRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DescribeAddressTransfersRequest> {
  const DescribeAddressTransfersRequestEc2QuerySerializer()
      : super('DescribeAddressTransfersRequest');

  @override
  Iterable<Type> get types => const [
        DescribeAddressTransfersRequest,
        _$DescribeAddressTransfersRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeAddressTransfersRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeAddressTransfersRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'AllocationId':
          result.allocationIds.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'AllocationId',
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
    DescribeAddressTransfersRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DescribeAddressTransfersRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeAddressTransfersRequest(
      :allocationIds,
      :nextToken,
      :maxResults,
      :dryRun
    ) = object;
    if (allocationIds != null) {
      result$
        ..add(const _i1.XmlElementName('AllocationId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'AllocationId',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          allocationIds,
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
    result$
      ..add(const _i1.XmlElementName('MaxResults'))
      ..add(serializers.serialize(
        maxResults,
        specifiedType: const FullType(int),
      ));
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
