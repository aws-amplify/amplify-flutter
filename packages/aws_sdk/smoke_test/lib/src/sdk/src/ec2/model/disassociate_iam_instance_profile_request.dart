// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.disassociate_iam_instance_profile_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'disassociate_iam_instance_profile_request.g.dart';

abstract class DisassociateIamInstanceProfileRequest
    with
        _i1.HttpInput<DisassociateIamInstanceProfileRequest>,
        _i2.AWSEquatable<DisassociateIamInstanceProfileRequest>
    implements
        Built<DisassociateIamInstanceProfileRequest,
            DisassociateIamInstanceProfileRequestBuilder> {
  factory DisassociateIamInstanceProfileRequest({String? associationId}) {
    return _$DisassociateIamInstanceProfileRequest._(
        associationId: associationId);
  }

  factory DisassociateIamInstanceProfileRequest.build(
      [void Function(DisassociateIamInstanceProfileRequestBuilder)
          updates]) = _$DisassociateIamInstanceProfileRequest;

  const DisassociateIamInstanceProfileRequest._();

  factory DisassociateIamInstanceProfileRequest.fromRequest(
    DisassociateIamInstanceProfileRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DisassociateIamInstanceProfileRequest>>
      serializers = [DisassociateIamInstanceProfileRequestEc2QuerySerializer()];

  /// The ID of the IAM instance profile association.
  String? get associationId;
  @override
  DisassociateIamInstanceProfileRequest getPayload() => this;
  @override
  List<Object?> get props => [associationId];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DisassociateIamInstanceProfileRequest')
          ..add(
            'associationId',
            associationId,
          );
    return helper.toString();
  }
}

class DisassociateIamInstanceProfileRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<DisassociateIamInstanceProfileRequest> {
  const DisassociateIamInstanceProfileRequestEc2QuerySerializer()
      : super('DisassociateIamInstanceProfileRequest');

  @override
  Iterable<Type> get types => const [
        DisassociateIamInstanceProfileRequest,
        _$DisassociateIamInstanceProfileRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DisassociateIamInstanceProfileRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DisassociateIamInstanceProfileRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
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
    DisassociateIamInstanceProfileRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DisassociateIamInstanceProfileRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DisassociateIamInstanceProfileRequest(:associationId) = object;
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
