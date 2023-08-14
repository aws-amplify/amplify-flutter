// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_flow_logs_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/flow_log.dart';

part 'describe_flow_logs_result.g.dart';

abstract class DescribeFlowLogsResult
    with _i1.AWSEquatable<DescribeFlowLogsResult>
    implements Built<DescribeFlowLogsResult, DescribeFlowLogsResultBuilder> {
  factory DescribeFlowLogsResult({
    List<FlowLog>? flowLogs,
    String? nextToken,
  }) {
    return _$DescribeFlowLogsResult._(
      flowLogs: flowLogs == null ? null : _i2.BuiltList(flowLogs),
      nextToken: nextToken,
    );
  }

  factory DescribeFlowLogsResult.build(
          [void Function(DescribeFlowLogsResultBuilder) updates]) =
      _$DescribeFlowLogsResult;

  const DescribeFlowLogsResult._();

  /// Constructs a [DescribeFlowLogsResult] from a [payload] and [response].
  factory DescribeFlowLogsResult.fromResponse(
    DescribeFlowLogsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DescribeFlowLogsResult>> serializers =
      [DescribeFlowLogsResultEc2QuerySerializer()];

  /// Information about the flow logs.
  _i2.BuiltList<FlowLog>? get flowLogs;

  /// The token to request the next page of items. This value is `null` when there are no more items to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        flowLogs,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeFlowLogsResult')
      ..add(
        'flowLogs',
        flowLogs,
      )
      ..add(
        'nextToken',
        nextToken,
      );
    return helper.toString();
  }
}

class DescribeFlowLogsResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DescribeFlowLogsResult> {
  const DescribeFlowLogsResultEc2QuerySerializer()
      : super('DescribeFlowLogsResult');

  @override
  Iterable<Type> get types => const [
        DescribeFlowLogsResult,
        _$DescribeFlowLogsResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeFlowLogsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeFlowLogsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'flowLogSet':
          result.flowLogs.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(FlowLog)],
            ),
          ) as _i2.BuiltList<FlowLog>));
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
    DescribeFlowLogsResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeFlowLogsResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeFlowLogsResult(:flowLogs, :nextToken) = object;
    if (flowLogs != null) {
      result$
        ..add(const _i3.XmlElementName('FlowLogSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          flowLogs,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(FlowLog)],
          ),
        ));
    }
    if (nextToken != null) {
      result$
        ..add(const _i3.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
