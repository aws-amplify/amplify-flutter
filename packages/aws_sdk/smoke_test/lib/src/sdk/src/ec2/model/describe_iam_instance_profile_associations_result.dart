// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_iam_instance_profile_associations_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/iam_instance_profile_association.dart';

part 'describe_iam_instance_profile_associations_result.g.dart';

abstract class DescribeIamInstanceProfileAssociationsResult
    with
        _i1.AWSEquatable<DescribeIamInstanceProfileAssociationsResult>
    implements
        Built<DescribeIamInstanceProfileAssociationsResult,
            DescribeIamInstanceProfileAssociationsResultBuilder> {
  factory DescribeIamInstanceProfileAssociationsResult({
    List<IamInstanceProfileAssociation>? iamInstanceProfileAssociations,
    String? nextToken,
  }) {
    return _$DescribeIamInstanceProfileAssociationsResult._(
      iamInstanceProfileAssociations: iamInstanceProfileAssociations == null
          ? null
          : _i2.BuiltList(iamInstanceProfileAssociations),
      nextToken: nextToken,
    );
  }

  factory DescribeIamInstanceProfileAssociationsResult.build(
      [void Function(DescribeIamInstanceProfileAssociationsResultBuilder)
          updates]) = _$DescribeIamInstanceProfileAssociationsResult;

  const DescribeIamInstanceProfileAssociationsResult._();

  /// Constructs a [DescribeIamInstanceProfileAssociationsResult] from a [payload] and [response].
  factory DescribeIamInstanceProfileAssociationsResult.fromResponse(
    DescribeIamInstanceProfileAssociationsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
          _i3.SmithySerializer<DescribeIamInstanceProfileAssociationsResult>>
      serializers = [
    DescribeIamInstanceProfileAssociationsResultEc2QuerySerializer()
  ];

  /// Information about the IAM instance profile associations.
  _i2.BuiltList<IamInstanceProfileAssociation>?
      get iamInstanceProfileAssociations;

  /// The token to include in another request to get the next page of items. This value is `null` when there are no more items to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        iamInstanceProfileAssociations,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DescribeIamInstanceProfileAssociationsResult')
      ..add(
        'iamInstanceProfileAssociations',
        iamInstanceProfileAssociations,
      )
      ..add(
        'nextToken',
        nextToken,
      );
    return helper.toString();
  }
}

class DescribeIamInstanceProfileAssociationsResultEc2QuerySerializer extends _i3
    .StructuredSmithySerializer<DescribeIamInstanceProfileAssociationsResult> {
  const DescribeIamInstanceProfileAssociationsResultEc2QuerySerializer()
      : super('DescribeIamInstanceProfileAssociationsResult');

  @override
  Iterable<Type> get types => const [
        DescribeIamInstanceProfileAssociationsResult,
        _$DescribeIamInstanceProfileAssociationsResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeIamInstanceProfileAssociationsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeIamInstanceProfileAssociationsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'iamInstanceProfileAssociationSet':
          result.iamInstanceProfileAssociations
              .replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(IamInstanceProfileAssociation)],
            ),
          ) as _i2.BuiltList<IamInstanceProfileAssociation>));
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
    DescribeIamInstanceProfileAssociationsResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeIamInstanceProfileAssociationsResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeIamInstanceProfileAssociationsResult(
      :iamInstanceProfileAssociations,
      :nextToken
    ) = object;
    if (iamInstanceProfileAssociations != null) {
      result$
        ..add(const _i3.XmlElementName('IamInstanceProfileAssociationSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          iamInstanceProfileAssociations,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(IamInstanceProfileAssociation)],
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
