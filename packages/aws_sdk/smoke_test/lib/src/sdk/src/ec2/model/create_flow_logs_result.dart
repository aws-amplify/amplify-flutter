// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_flow_logs_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/unsuccessful_item.dart';

part 'create_flow_logs_result.g.dart';

abstract class CreateFlowLogsResult
    with _i1.AWSEquatable<CreateFlowLogsResult>
    implements Built<CreateFlowLogsResult, CreateFlowLogsResultBuilder> {
  factory CreateFlowLogsResult({
    String? clientToken,
    List<String>? flowLogIds,
    List<UnsuccessfulItem>? unsuccessful,
  }) {
    return _$CreateFlowLogsResult._(
      clientToken: clientToken,
      flowLogIds: flowLogIds == null ? null : _i2.BuiltList(flowLogIds),
      unsuccessful: unsuccessful == null ? null : _i2.BuiltList(unsuccessful),
    );
  }

  factory CreateFlowLogsResult.build(
          [void Function(CreateFlowLogsResultBuilder) updates]) =
      _$CreateFlowLogsResult;

  const CreateFlowLogsResult._();

  /// Constructs a [CreateFlowLogsResult] from a [payload] and [response].
  factory CreateFlowLogsResult.fromResponse(
    CreateFlowLogsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<CreateFlowLogsResult>> serializers = [
    CreateFlowLogsResultEc2QuerySerializer()
  ];

  /// Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.
  String? get clientToken;

  /// The IDs of the flow logs.
  _i2.BuiltList<String>? get flowLogIds;

  /// Information about the flow logs that could not be created successfully.
  _i2.BuiltList<UnsuccessfulItem>? get unsuccessful;
  @override
  List<Object?> get props => [
        clientToken,
        flowLogIds,
        unsuccessful,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateFlowLogsResult')
      ..add(
        'clientToken',
        clientToken,
      )
      ..add(
        'flowLogIds',
        flowLogIds,
      )
      ..add(
        'unsuccessful',
        unsuccessful,
      );
    return helper.toString();
  }
}

class CreateFlowLogsResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<CreateFlowLogsResult> {
  const CreateFlowLogsResultEc2QuerySerializer()
      : super('CreateFlowLogsResult');

  @override
  Iterable<Type> get types => const [
        CreateFlowLogsResult,
        _$CreateFlowLogsResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateFlowLogsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateFlowLogsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'clientToken':
          result.clientToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'flowLogIdSet':
          result.flowLogIds.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(String)],
            ),
          ) as _i2.BuiltList<String>));
        case 'unsuccessful':
          result.unsuccessful.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(UnsuccessfulItem)],
            ),
          ) as _i2.BuiltList<UnsuccessfulItem>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CreateFlowLogsResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'CreateFlowLogsResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateFlowLogsResult(:clientToken, :flowLogIds, :unsuccessful) =
        object;
    if (clientToken != null) {
      result$
        ..add(const _i3.XmlElementName('ClientToken'))
        ..add(serializers.serialize(
          clientToken,
          specifiedType: const FullType(String),
        ));
    }
    if (flowLogIds != null) {
      result$
        ..add(const _i3.XmlElementName('FlowLogIdSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          flowLogIds,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (unsuccessful != null) {
      result$
        ..add(const _i3.XmlElementName('Unsuccessful'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          unsuccessful,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(UnsuccessfulItem)],
          ),
        ));
    }
    return result$;
  }
}
