// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_instance_credit_specifications_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_credit_specification.dart';

part 'describe_instance_credit_specifications_result.g.dart';

abstract class DescribeInstanceCreditSpecificationsResult
    with
        _i1.AWSEquatable<DescribeInstanceCreditSpecificationsResult>
    implements
        Built<DescribeInstanceCreditSpecificationsResult,
            DescribeInstanceCreditSpecificationsResultBuilder> {
  factory DescribeInstanceCreditSpecificationsResult({
    List<InstanceCreditSpecification>? instanceCreditSpecifications,
    String? nextToken,
  }) {
    return _$DescribeInstanceCreditSpecificationsResult._(
      instanceCreditSpecifications: instanceCreditSpecifications == null
          ? null
          : _i2.BuiltList(instanceCreditSpecifications),
      nextToken: nextToken,
    );
  }

  factory DescribeInstanceCreditSpecificationsResult.build(
      [void Function(DescribeInstanceCreditSpecificationsResultBuilder)
          updates]) = _$DescribeInstanceCreditSpecificationsResult;

  const DescribeInstanceCreditSpecificationsResult._();

  /// Constructs a [DescribeInstanceCreditSpecificationsResult] from a [payload] and [response].
  factory DescribeInstanceCreditSpecificationsResult.fromResponse(
    DescribeInstanceCreditSpecificationsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
          _i3.SmithySerializer<DescribeInstanceCreditSpecificationsResult>>
      serializers = [
    DescribeInstanceCreditSpecificationsResultEc2QuerySerializer()
  ];

  /// Information about the credit option for CPU usage of an instance.
  _i2.BuiltList<InstanceCreditSpecification>? get instanceCreditSpecifications;

  /// The token to include in another request to get the next page of items. This value is `null` when there are no more items to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        instanceCreditSpecifications,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DescribeInstanceCreditSpecificationsResult')
      ..add(
        'instanceCreditSpecifications',
        instanceCreditSpecifications,
      )
      ..add(
        'nextToken',
        nextToken,
      );
    return helper.toString();
  }
}

class DescribeInstanceCreditSpecificationsResultEc2QuerySerializer extends _i3
    .StructuredSmithySerializer<DescribeInstanceCreditSpecificationsResult> {
  const DescribeInstanceCreditSpecificationsResultEc2QuerySerializer()
      : super('DescribeInstanceCreditSpecificationsResult');

  @override
  Iterable<Type> get types => const [
        DescribeInstanceCreditSpecificationsResult,
        _$DescribeInstanceCreditSpecificationsResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeInstanceCreditSpecificationsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeInstanceCreditSpecificationsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'instanceCreditSpecificationSet':
          result.instanceCreditSpecifications
              .replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(InstanceCreditSpecification)],
            ),
          ) as _i2.BuiltList<InstanceCreditSpecification>));
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
    DescribeInstanceCreditSpecificationsResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeInstanceCreditSpecificationsResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeInstanceCreditSpecificationsResult(
      :instanceCreditSpecifications,
      :nextToken
    ) = object;
    if (instanceCreditSpecifications != null) {
      result$
        ..add(const _i3.XmlElementName('InstanceCreditSpecificationSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          instanceCreditSpecifications,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(InstanceCreditSpecification)],
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
