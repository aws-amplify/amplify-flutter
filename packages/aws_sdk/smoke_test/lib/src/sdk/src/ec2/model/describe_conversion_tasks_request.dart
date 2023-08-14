// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_conversion_tasks_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'describe_conversion_tasks_request.g.dart';

abstract class DescribeConversionTasksRequest
    with
        _i1.HttpInput<DescribeConversionTasksRequest>,
        _i2.AWSEquatable<DescribeConversionTasksRequest>
    implements
        Built<DescribeConversionTasksRequest,
            DescribeConversionTasksRequestBuilder> {
  factory DescribeConversionTasksRequest({
    List<String>? conversionTaskIds,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$DescribeConversionTasksRequest._(
      conversionTaskIds:
          conversionTaskIds == null ? null : _i3.BuiltList(conversionTaskIds),
      dryRun: dryRun,
    );
  }

  factory DescribeConversionTasksRequest.build(
          [void Function(DescribeConversionTasksRequestBuilder) updates]) =
      _$DescribeConversionTasksRequest;

  const DescribeConversionTasksRequest._();

  factory DescribeConversionTasksRequest.fromRequest(
    DescribeConversionTasksRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DescribeConversionTasksRequest>>
      serializers = [DescribeConversionTasksRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeConversionTasksRequestBuilder b) {
    b.dryRun = false;
  }

  /// The conversion task IDs.
  _i3.BuiltList<String>? get conversionTaskIds;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  DescribeConversionTasksRequest getPayload() => this;
  @override
  List<Object?> get props => [
        conversionTaskIds,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeConversionTasksRequest')
      ..add(
        'conversionTaskIds',
        conversionTaskIds,
      )
      ..add(
        'dryRun',
        dryRun,
      );
    return helper.toString();
  }
}

class DescribeConversionTasksRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DescribeConversionTasksRequest> {
  const DescribeConversionTasksRequestEc2QuerySerializer()
      : super('DescribeConversionTasksRequest');

  @override
  Iterable<Type> get types => const [
        DescribeConversionTasksRequest,
        _$DescribeConversionTasksRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeConversionTasksRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeConversionTasksRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'conversionTaskId':
          result.conversionTaskIds.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'item',
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
    DescribeConversionTasksRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DescribeConversionTasksRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeConversionTasksRequest(:conversionTaskIds, :dryRun) = object;
    if (conversionTaskIds != null) {
      result$
        ..add(const _i1.XmlElementName('ConversionTaskId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          conversionTaskIds,
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
