// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_instance_types_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_type_info.dart';

part 'describe_instance_types_result.g.dart';

abstract class DescribeInstanceTypesResult
    with _i1.AWSEquatable<DescribeInstanceTypesResult>
    implements
        Built<DescribeInstanceTypesResult, DescribeInstanceTypesResultBuilder> {
  factory DescribeInstanceTypesResult({
    List<InstanceTypeInfo>? instanceTypes,
    String? nextToken,
  }) {
    return _$DescribeInstanceTypesResult._(
      instanceTypes:
          instanceTypes == null ? null : _i2.BuiltList(instanceTypes),
      nextToken: nextToken,
    );
  }

  factory DescribeInstanceTypesResult.build(
          [void Function(DescribeInstanceTypesResultBuilder) updates]) =
      _$DescribeInstanceTypesResult;

  const DescribeInstanceTypesResult._();

  /// Constructs a [DescribeInstanceTypesResult] from a [payload] and [response].
  factory DescribeInstanceTypesResult.fromResponse(
    DescribeInstanceTypesResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DescribeInstanceTypesResult>>
      serializers = [DescribeInstanceTypesResultEc2QuerySerializer()];

  /// The instance type. For more information, see [Instance types](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html) in the _Amazon EC2 User Guide_.
  _i2.BuiltList<InstanceTypeInfo>? get instanceTypes;

  /// The token to include in another request to get the next page of items. This value is `null` when there are no more items to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        instanceTypes,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeInstanceTypesResult')
      ..add(
        'instanceTypes',
        instanceTypes,
      )
      ..add(
        'nextToken',
        nextToken,
      );
    return helper.toString();
  }
}

class DescribeInstanceTypesResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DescribeInstanceTypesResult> {
  const DescribeInstanceTypesResultEc2QuerySerializer()
      : super('DescribeInstanceTypesResult');

  @override
  Iterable<Type> get types => const [
        DescribeInstanceTypesResult,
        _$DescribeInstanceTypesResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeInstanceTypesResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeInstanceTypesResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'instanceTypeSet':
          result.instanceTypes.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(InstanceTypeInfo)],
            ),
          ) as _i2.BuiltList<InstanceTypeInfo>));
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
    DescribeInstanceTypesResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeInstanceTypesResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeInstanceTypesResult(:instanceTypes, :nextToken) = object;
    if (instanceTypes != null) {
      result$
        ..add(const _i3.XmlElementName('InstanceTypeSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          instanceTypes,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(InstanceTypeInfo)],
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
