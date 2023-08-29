// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.replace_iam_instance_profile_association_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/iam_instance_profile_specification.dart';

part 'replace_iam_instance_profile_association_request.g.dart';

abstract class ReplaceIamInstanceProfileAssociationRequest
    with
        _i1.HttpInput<ReplaceIamInstanceProfileAssociationRequest>,
        _i2.AWSEquatable<ReplaceIamInstanceProfileAssociationRequest>
    implements
        Built<ReplaceIamInstanceProfileAssociationRequest,
            ReplaceIamInstanceProfileAssociationRequestBuilder> {
  factory ReplaceIamInstanceProfileAssociationRequest({
    IamInstanceProfileSpecification? iamInstanceProfile,
    String? associationId,
  }) {
    return _$ReplaceIamInstanceProfileAssociationRequest._(
      iamInstanceProfile: iamInstanceProfile,
      associationId: associationId,
    );
  }

  factory ReplaceIamInstanceProfileAssociationRequest.build(
      [void Function(ReplaceIamInstanceProfileAssociationRequestBuilder)
          updates]) = _$ReplaceIamInstanceProfileAssociationRequest;

  const ReplaceIamInstanceProfileAssociationRequest._();

  factory ReplaceIamInstanceProfileAssociationRequest.fromRequest(
    ReplaceIamInstanceProfileAssociationRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1.SmithySerializer<ReplaceIamInstanceProfileAssociationRequest>>
      serializers = [
    ReplaceIamInstanceProfileAssociationRequestEc2QuerySerializer()
  ];

  /// The IAM instance profile.
  IamInstanceProfileSpecification? get iamInstanceProfile;

  /// The ID of the existing IAM instance profile association.
  String? get associationId;
  @override
  ReplaceIamInstanceProfileAssociationRequest getPayload() => this;
  @override
  List<Object?> get props => [
        iamInstanceProfile,
        associationId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'ReplaceIamInstanceProfileAssociationRequest')
      ..add(
        'iamInstanceProfile',
        iamInstanceProfile,
      )
      ..add(
        'associationId',
        associationId,
      );
    return helper.toString();
  }
}

class ReplaceIamInstanceProfileAssociationRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<ReplaceIamInstanceProfileAssociationRequest> {
  const ReplaceIamInstanceProfileAssociationRequestEc2QuerySerializer()
      : super('ReplaceIamInstanceProfileAssociationRequest');

  @override
  Iterable<Type> get types => const [
        ReplaceIamInstanceProfileAssociationRequest,
        _$ReplaceIamInstanceProfileAssociationRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ReplaceIamInstanceProfileAssociationRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReplaceIamInstanceProfileAssociationRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'IamInstanceProfile':
          result.iamInstanceProfile.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(IamInstanceProfileSpecification),
          ) as IamInstanceProfileSpecification));
        case 'AssociationId':
          result.associationId = (serializers.deserialize(
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
    ReplaceIamInstanceProfileAssociationRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'ReplaceIamInstanceProfileAssociationRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ReplaceIamInstanceProfileAssociationRequest(
      :iamInstanceProfile,
      :associationId
    ) = object;
    if (iamInstanceProfile != null) {
      result$
        ..add(const _i1.XmlElementName('IamInstanceProfile'))
        ..add(serializers.serialize(
          iamInstanceProfile,
          specifiedType: const FullType(IamInstanceProfileSpecification),
        ));
    }
    if (associationId != null) {
      result$
        ..add(const _i1.XmlElementName('AssociationId'))
        ..add(serializers.serialize(
          associationId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
