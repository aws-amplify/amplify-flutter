// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.disassociate_iam_instance_profile_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/iam_instance_profile_association.dart';

part 'disassociate_iam_instance_profile_result.g.dart';

abstract class DisassociateIamInstanceProfileResult
    with
        _i1.AWSEquatable<DisassociateIamInstanceProfileResult>
    implements
        Built<DisassociateIamInstanceProfileResult,
            DisassociateIamInstanceProfileResultBuilder> {
  factory DisassociateIamInstanceProfileResult(
      {IamInstanceProfileAssociation? iamInstanceProfileAssociation}) {
    return _$DisassociateIamInstanceProfileResult._(
        iamInstanceProfileAssociation: iamInstanceProfileAssociation);
  }

  factory DisassociateIamInstanceProfileResult.build(
      [void Function(DisassociateIamInstanceProfileResultBuilder)
          updates]) = _$DisassociateIamInstanceProfileResult;

  const DisassociateIamInstanceProfileResult._();

  /// Constructs a [DisassociateIamInstanceProfileResult] from a [payload] and [response].
  factory DisassociateIamInstanceProfileResult.fromResponse(
    DisassociateIamInstanceProfileResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<DisassociateIamInstanceProfileResult>>
      serializers = [DisassociateIamInstanceProfileResultEc2QuerySerializer()];

  /// Information about the IAM instance profile association.
  IamInstanceProfileAssociation? get iamInstanceProfileAssociation;
  @override
  List<Object?> get props => [iamInstanceProfileAssociation];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DisassociateIamInstanceProfileResult')
          ..add(
            'iamInstanceProfileAssociation',
            iamInstanceProfileAssociation,
          );
    return helper.toString();
  }
}

class DisassociateIamInstanceProfileResultEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<DisassociateIamInstanceProfileResult> {
  const DisassociateIamInstanceProfileResultEc2QuerySerializer()
      : super('DisassociateIamInstanceProfileResult');

  @override
  Iterable<Type> get types => const [
        DisassociateIamInstanceProfileResult,
        _$DisassociateIamInstanceProfileResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DisassociateIamInstanceProfileResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DisassociateIamInstanceProfileResultBuilder();
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
    DisassociateIamInstanceProfileResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'DisassociateIamInstanceProfileResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DisassociateIamInstanceProfileResult(:iamInstanceProfileAssociation) =
        object;
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
