// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_classic_link_instances_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/classic_link_instance.dart';

part 'describe_classic_link_instances_result.g.dart';

abstract class DescribeClassicLinkInstancesResult
    with
        _i1.AWSEquatable<DescribeClassicLinkInstancesResult>
    implements
        Built<DescribeClassicLinkInstancesResult,
            DescribeClassicLinkInstancesResultBuilder> {
  factory DescribeClassicLinkInstancesResult({
    List<ClassicLinkInstance>? instances,
    String? nextToken,
  }) {
    return _$DescribeClassicLinkInstancesResult._(
      instances: instances == null ? null : _i2.BuiltList(instances),
      nextToken: nextToken,
    );
  }

  factory DescribeClassicLinkInstancesResult.build(
          [void Function(DescribeClassicLinkInstancesResultBuilder) updates]) =
      _$DescribeClassicLinkInstancesResult;

  const DescribeClassicLinkInstancesResult._();

  /// Constructs a [DescribeClassicLinkInstancesResult] from a [payload] and [response].
  factory DescribeClassicLinkInstancesResult.fromResponse(
    DescribeClassicLinkInstancesResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DescribeClassicLinkInstancesResult>>
      serializers = [DescribeClassicLinkInstancesResultEc2QuerySerializer()];

  /// Information about one or more linked EC2-Classic instances.
  _i2.BuiltList<ClassicLinkInstance>? get instances;

  /// The token to include in another request to get the next page of items. This value is `null` when there are no more items to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        instances,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeClassicLinkInstancesResult')
          ..add(
            'instances',
            instances,
          )
          ..add(
            'nextToken',
            nextToken,
          );
    return helper.toString();
  }
}

class DescribeClassicLinkInstancesResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DescribeClassicLinkInstancesResult> {
  const DescribeClassicLinkInstancesResultEc2QuerySerializer()
      : super('DescribeClassicLinkInstancesResult');

  @override
  Iterable<Type> get types => const [
        DescribeClassicLinkInstancesResult,
        _$DescribeClassicLinkInstancesResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeClassicLinkInstancesResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeClassicLinkInstancesResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'instancesSet':
          result.instances.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(ClassicLinkInstance)],
            ),
          ) as _i2.BuiltList<ClassicLinkInstance>));
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
    DescribeClassicLinkInstancesResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeClassicLinkInstancesResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeClassicLinkInstancesResult(:instances, :nextToken) = object;
    if (instances != null) {
      result$
        ..add(const _i3.XmlElementName('InstancesSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          instances,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(ClassicLinkInstance)],
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
