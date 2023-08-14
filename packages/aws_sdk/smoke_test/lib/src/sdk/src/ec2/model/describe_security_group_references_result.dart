// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_security_group_references_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/security_group_reference.dart';

part 'describe_security_group_references_result.g.dart';

abstract class DescribeSecurityGroupReferencesResult
    with
        _i1.AWSEquatable<DescribeSecurityGroupReferencesResult>
    implements
        Built<DescribeSecurityGroupReferencesResult,
            DescribeSecurityGroupReferencesResultBuilder> {
  factory DescribeSecurityGroupReferencesResult(
      {List<SecurityGroupReference>? securityGroupReferenceSet}) {
    return _$DescribeSecurityGroupReferencesResult._(
        securityGroupReferenceSet: securityGroupReferenceSet == null
            ? null
            : _i2.BuiltList(securityGroupReferenceSet));
  }

  factory DescribeSecurityGroupReferencesResult.build(
      [void Function(DescribeSecurityGroupReferencesResultBuilder)
          updates]) = _$DescribeSecurityGroupReferencesResult;

  const DescribeSecurityGroupReferencesResult._();

  /// Constructs a [DescribeSecurityGroupReferencesResult] from a [payload] and [response].
  factory DescribeSecurityGroupReferencesResult.fromResponse(
    DescribeSecurityGroupReferencesResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DescribeSecurityGroupReferencesResult>>
      serializers = [DescribeSecurityGroupReferencesResultEc2QuerySerializer()];

  /// Information about the VPCs with the referencing security groups.
  _i2.BuiltList<SecurityGroupReference>? get securityGroupReferenceSet;
  @override
  List<Object?> get props => [securityGroupReferenceSet];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeSecurityGroupReferencesResult')
          ..add(
            'securityGroupReferenceSet',
            securityGroupReferenceSet,
          );
    return helper.toString();
  }
}

class DescribeSecurityGroupReferencesResultEc2QuerySerializer extends _i3
    .StructuredSmithySerializer<DescribeSecurityGroupReferencesResult> {
  const DescribeSecurityGroupReferencesResultEc2QuerySerializer()
      : super('DescribeSecurityGroupReferencesResult');

  @override
  Iterable<Type> get types => const [
        DescribeSecurityGroupReferencesResult,
        _$DescribeSecurityGroupReferencesResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeSecurityGroupReferencesResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeSecurityGroupReferencesResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'securityGroupReferenceSet':
          result.securityGroupReferenceSet
              .replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(SecurityGroupReference)],
            ),
          ) as _i2.BuiltList<SecurityGroupReference>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeSecurityGroupReferencesResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeSecurityGroupReferencesResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeSecurityGroupReferencesResult(:securityGroupReferenceSet) =
        object;
    if (securityGroupReferenceSet != null) {
      result$
        ..add(const _i3.XmlElementName('SecurityGroupReferenceSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          securityGroupReferenceSet,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(SecurityGroupReference)],
          ),
        ));
    }
    return result$;
  }
}
