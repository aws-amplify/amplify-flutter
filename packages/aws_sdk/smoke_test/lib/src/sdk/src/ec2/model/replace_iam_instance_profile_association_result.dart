// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.replace_iam_instance_profile_association_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/iam_instance_profile_association.dart';

part 'replace_iam_instance_profile_association_result.g.dart';

abstract class ReplaceIamInstanceProfileAssociationResult
    with
        _i1.AWSEquatable<ReplaceIamInstanceProfileAssociationResult>
    implements
        Built<ReplaceIamInstanceProfileAssociationResult,
            ReplaceIamInstanceProfileAssociationResultBuilder> {
  factory ReplaceIamInstanceProfileAssociationResult(
      {IamInstanceProfileAssociation? iamInstanceProfileAssociation}) {
    return _$ReplaceIamInstanceProfileAssociationResult._(
        iamInstanceProfileAssociation: iamInstanceProfileAssociation);
  }

  factory ReplaceIamInstanceProfileAssociationResult.build(
      [void Function(ReplaceIamInstanceProfileAssociationResultBuilder)
          updates]) = _$ReplaceIamInstanceProfileAssociationResult;

  const ReplaceIamInstanceProfileAssociationResult._();

  /// Constructs a [ReplaceIamInstanceProfileAssociationResult] from a [payload] and [response].
  factory ReplaceIamInstanceProfileAssociationResult.fromResponse(
    ReplaceIamInstanceProfileAssociationResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
          _i2.SmithySerializer<ReplaceIamInstanceProfileAssociationResult>>
      serializers = [
    ReplaceIamInstanceProfileAssociationResultEc2QuerySerializer()
  ];

  /// Information about the IAM instance profile association.
  IamInstanceProfileAssociation? get iamInstanceProfileAssociation;
  @override
  List<Object?> get props => [iamInstanceProfileAssociation];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'ReplaceIamInstanceProfileAssociationResult')
      ..add(
        'iamInstanceProfileAssociation',
        iamInstanceProfileAssociation,
      );
    return helper.toString();
  }
}

class ReplaceIamInstanceProfileAssociationResultEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<ReplaceIamInstanceProfileAssociationResult> {
  const ReplaceIamInstanceProfileAssociationResultEc2QuerySerializer()
      : super('ReplaceIamInstanceProfileAssociationResult');

  @override
  Iterable<Type> get types => const [
        ReplaceIamInstanceProfileAssociationResult,
        _$ReplaceIamInstanceProfileAssociationResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ReplaceIamInstanceProfileAssociationResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReplaceIamInstanceProfileAssociationResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'iamInstanceProfileAssociation':
          result.iamInstanceProfileAssociation.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(IamInstanceProfileAssociation),
          ) as IamInstanceProfileAssociation));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ReplaceIamInstanceProfileAssociationResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ReplaceIamInstanceProfileAssociationResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ReplaceIamInstanceProfileAssociationResult(
      :iamInstanceProfileAssociation
    ) = object;
    if (iamInstanceProfileAssociation != null) {
      result$
        ..add(const _i2.XmlElementName('IamInstanceProfileAssociation'))
        ..add(serializers.serialize(
          iamInstanceProfileAssociation,
          specifiedType: const FullType(IamInstanceProfileAssociation),
        ));
    }
    return result$;
  }
}
