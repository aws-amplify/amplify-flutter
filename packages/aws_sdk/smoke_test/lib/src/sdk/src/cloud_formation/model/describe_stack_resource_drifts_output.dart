// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.cloud_formation.model.describe_stack_resource_drifts_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_resource_drift.dart';

part 'describe_stack_resource_drifts_output.g.dart';

abstract class DescribeStackResourceDriftsOutput
    with
        _i1.AWSEquatable<DescribeStackResourceDriftsOutput>
    implements
        Built<DescribeStackResourceDriftsOutput,
            DescribeStackResourceDriftsOutputBuilder> {
  factory DescribeStackResourceDriftsOutput({
    required List<StackResourceDrift> stackResourceDrifts,
    String? nextToken,
  }) {
    return _$DescribeStackResourceDriftsOutput._(
      stackResourceDrifts: _i2.BuiltList(stackResourceDrifts),
      nextToken: nextToken,
    );
  }

  factory DescribeStackResourceDriftsOutput.build(
          [void Function(DescribeStackResourceDriftsOutputBuilder) updates]) =
      _$DescribeStackResourceDriftsOutput;

  const DescribeStackResourceDriftsOutput._();

  /// Constructs a [DescribeStackResourceDriftsOutput] from a [payload] and [response].
  factory DescribeStackResourceDriftsOutput.fromResponse(
    DescribeStackResourceDriftsOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DescribeStackResourceDriftsOutput>>
      serializers = [DescribeStackResourceDriftsOutputAwsQuerySerializer()];

  /// Drift information for the resources that have been checked for drift in the specified stack. This includes actual and expected configuration values for resources where CloudFormation detects drift.
  ///
  /// For a given stack, there will be one `StackResourceDrift` for each stack resource that has been checked for drift. Resources that haven't yet been checked for drift aren't included. Resources that do not currently support drift detection aren't checked, and so not included. For a list of resources that support drift detection, see [Resources that Support Drift Detection](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift-resource-list.html).
  _i2.BuiltList<StackResourceDrift> get stackResourceDrifts;

  /// If the request doesn't return all the remaining results, `NextToken` is set to a token. To retrieve the next set of results, call `DescribeStackResourceDrifts` again and assign that token to the request object's `NextToken` parameter. If the request returns all results, `NextToken` is set to `null`.
  String? get nextToken;
  @override
  List<Object?> get props => [
        stackResourceDrifts,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeStackResourceDriftsOutput')
          ..add(
            'stackResourceDrifts',
            stackResourceDrifts,
          )
          ..add(
            'nextToken',
            nextToken,
          );
    return helper.toString();
  }
}

class DescribeStackResourceDriftsOutputAwsQuerySerializer
    extends _i3.StructuredSmithySerializer<DescribeStackResourceDriftsOutput> {
  const DescribeStackResourceDriftsOutputAwsQuerySerializer()
      : super('DescribeStackResourceDriftsOutput');

  @override
  Iterable<Type> get types => const [
        DescribeStackResourceDriftsOutput,
        _$DescribeStackResourceDriftsOutput,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  DescribeStackResourceDriftsOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeStackResourceDriftsOutputBuilder();
    final responseIterator = serialized.iterator;
    while (responseIterator.moveNext()) {
      final key = responseIterator.current as String;
      responseIterator.moveNext();
      if (key.endsWith('Result')) {
        serialized = responseIterator.current as Iterable;
      }
    }
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'StackResourceDrifts':
          result.stackResourceDrifts.replace((const _i3.XmlBuiltListSerializer(
                  indexer: _i3.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(StackResourceDrift)],
            ),
          ) as _i2.BuiltList<StackResourceDrift>));
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
    DescribeStackResourceDriftsOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeStackResourceDriftsOutputResponse',
        _i3.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final DescribeStackResourceDriftsOutput(:stackResourceDrifts, :nextToken) =
        object;
    result$
      ..add(const _i3.XmlElementName('StackResourceDrifts'))
      ..add(
          const _i3.XmlBuiltListSerializer(indexer: _i3.XmlIndexer.awsQueryList)
              .serialize(
        serializers,
        stackResourceDrifts,
        specifiedType: const FullType.nullable(
          _i2.BuiltList,
          [FullType(StackResourceDrift)],
        ),
      ));
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
