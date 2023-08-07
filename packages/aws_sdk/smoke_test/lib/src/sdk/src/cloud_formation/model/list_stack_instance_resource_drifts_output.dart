// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.cloud_formation.model.list_stack_instance_resource_drifts_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_instance_resource_drifts_summary.dart'
    as _i2;

part 'list_stack_instance_resource_drifts_output.g.dart';

abstract class ListStackInstanceResourceDriftsOutput
    with
        _i1.AWSEquatable<ListStackInstanceResourceDriftsOutput>
    implements
        Built<ListStackInstanceResourceDriftsOutput,
            ListStackInstanceResourceDriftsOutputBuilder> {
  factory ListStackInstanceResourceDriftsOutput({
    List<_i2.StackInstanceResourceDriftsSummary>? summaries,
    String? nextToken,
  }) {
    return _$ListStackInstanceResourceDriftsOutput._(
      summaries: summaries == null ? null : _i3.BuiltList(summaries),
      nextToken: nextToken,
    );
  }

  factory ListStackInstanceResourceDriftsOutput.build(
      [void Function(ListStackInstanceResourceDriftsOutputBuilder)
          updates]) = _$ListStackInstanceResourceDriftsOutput;

  const ListStackInstanceResourceDriftsOutput._();

  /// Constructs a [ListStackInstanceResourceDriftsOutput] from a [payload] and [response].
  factory ListStackInstanceResourceDriftsOutput.fromResponse(
    ListStackInstanceResourceDriftsOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer<ListStackInstanceResourceDriftsOutput>>
      serializers = [ListStackInstanceResourceDriftsOutputAwsQuerySerializer()];

  /// A list of `StackInstanceResourceDriftSummary` structures that contain information about the specified stack instances.
  _i3.BuiltList<_i2.StackInstanceResourceDriftsSummary>? get summaries;

  /// If the previous paginated request didn't return all of the remaining results, the response object's `NextToken` parameter value is set to a token. To retrieve the next set of results, call this action again and assign that token to the request object's `NextToken` parameter. If there are no remaining results, the previous response object's `NextToken` parameter is set to `null`.
  String? get nextToken;
  @override
  List<Object?> get props => [
        summaries,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ListStackInstanceResourceDriftsOutput')
          ..add(
            'summaries',
            summaries,
          )
          ..add(
            'nextToken',
            nextToken,
          );
    return helper.toString();
  }
}

class ListStackInstanceResourceDriftsOutputAwsQuerySerializer extends _i4
    .StructuredSmithySerializer<ListStackInstanceResourceDriftsOutput> {
  const ListStackInstanceResourceDriftsOutputAwsQuerySerializer()
      : super('ListStackInstanceResourceDriftsOutput');

  @override
  Iterable<Type> get types => const [
        ListStackInstanceResourceDriftsOutput,
        _$ListStackInstanceResourceDriftsOutput,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  ListStackInstanceResourceDriftsOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListStackInstanceResourceDriftsOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Summaries':
          result.summaries.replace((const _i4.XmlBuiltListSerializer(
                  indexer: _i4.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(_i2.StackInstanceResourceDriftsSummary)],
            ),
          ) as _i3.BuiltList<_i2.StackInstanceResourceDriftsSummary>));
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
    ListStackInstanceResourceDriftsOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i4.XmlElementName(
        'ListStackInstanceResourceDriftsOutputResponse',
        _i4.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final ListStackInstanceResourceDriftsOutput(:summaries, :nextToken) =
        object;
    if (summaries != null) {
      result$
        ..add(const _i4.XmlElementName('Summaries'))
        ..add(const _i4.XmlBuiltListSerializer(
                indexer: _i4.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          summaries,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.StackInstanceResourceDriftsSummary)],
          ),
        ));
    }
    if (nextToken != null) {
      result$
        ..add(const _i4.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
