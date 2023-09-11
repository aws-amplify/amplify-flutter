// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_instance_status_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_status.dart';

part 'describe_instance_status_result.g.dart';

abstract class DescribeInstanceStatusResult
    with
        _i1.AWSEquatable<DescribeInstanceStatusResult>
    implements
        Built<DescribeInstanceStatusResult,
            DescribeInstanceStatusResultBuilder> {
  factory DescribeInstanceStatusResult({
    List<InstanceStatus>? instanceStatuses,
    String? nextToken,
  }) {
    return _$DescribeInstanceStatusResult._(
      instanceStatuses:
          instanceStatuses == null ? null : _i2.BuiltList(instanceStatuses),
      nextToken: nextToken,
    );
  }

  factory DescribeInstanceStatusResult.build(
          [void Function(DescribeInstanceStatusResultBuilder) updates]) =
      _$DescribeInstanceStatusResult;

  const DescribeInstanceStatusResult._();

  /// Constructs a [DescribeInstanceStatusResult] from a [payload] and [response].
  factory DescribeInstanceStatusResult.fromResponse(
    DescribeInstanceStatusResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DescribeInstanceStatusResult>>
      serializers = [DescribeInstanceStatusResultEc2QuerySerializer()];

  /// Information about the status of the instances.
  _i2.BuiltList<InstanceStatus>? get instanceStatuses;

  /// The token to include in another request to get the next page of items. This value is `null` when there are no more items to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        instanceStatuses,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeInstanceStatusResult')
      ..add(
        'instanceStatuses',
        instanceStatuses,
      )
      ..add(
        'nextToken',
        nextToken,
      );
    return helper.toString();
  }
}

class DescribeInstanceStatusResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DescribeInstanceStatusResult> {
  const DescribeInstanceStatusResultEc2QuerySerializer()
      : super('DescribeInstanceStatusResult');

  @override
  Iterable<Type> get types => const [
        DescribeInstanceStatusResult,
        _$DescribeInstanceStatusResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeInstanceStatusResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeInstanceStatusResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'instanceStatusSet':
          result.instanceStatuses.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(InstanceStatus)],
            ),
          ) as _i2.BuiltList<InstanceStatus>));
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
    DescribeInstanceStatusResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeInstanceStatusResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeInstanceStatusResult(:instanceStatuses, :nextToken) = object;
    if (instanceStatuses != null) {
      result$
        ..add(const _i3.XmlElementName('InstanceStatusSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          instanceStatuses,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(InstanceStatus)],
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
