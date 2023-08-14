// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.associate_iam_instance_profile_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/iam_instance_profile_specification.dart';

part 'associate_iam_instance_profile_request.g.dart';

abstract class AssociateIamInstanceProfileRequest
    with
        _i1.HttpInput<AssociateIamInstanceProfileRequest>,
        _i2.AWSEquatable<AssociateIamInstanceProfileRequest>
    implements
        Built<AssociateIamInstanceProfileRequest,
            AssociateIamInstanceProfileRequestBuilder> {
  factory AssociateIamInstanceProfileRequest({
    IamInstanceProfileSpecification? iamInstanceProfile,
    String? instanceId,
  }) {
    return _$AssociateIamInstanceProfileRequest._(
      iamInstanceProfile: iamInstanceProfile,
      instanceId: instanceId,
    );
  }

  factory AssociateIamInstanceProfileRequest.build(
          [void Function(AssociateIamInstanceProfileRequestBuilder) updates]) =
      _$AssociateIamInstanceProfileRequest;

  const AssociateIamInstanceProfileRequest._();

  factory AssociateIamInstanceProfileRequest.fromRequest(
    AssociateIamInstanceProfileRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<AssociateIamInstanceProfileRequest>>
      serializers = [AssociateIamInstanceProfileRequestEc2QuerySerializer()];

  /// The IAM instance profile.
  IamInstanceProfileSpecification? get iamInstanceProfile;

  /// The ID of the instance.
  String? get instanceId;
  @override
  AssociateIamInstanceProfileRequest getPayload() => this;
  @override
  List<Object?> get props => [
        iamInstanceProfile,
        instanceId,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('AssociateIamInstanceProfileRequest')
          ..add(
            'iamInstanceProfile',
            iamInstanceProfile,
          )
          ..add(
            'instanceId',
            instanceId,
          );
    return helper.toString();
  }
}

class AssociateIamInstanceProfileRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<AssociateIamInstanceProfileRequest> {
  const AssociateIamInstanceProfileRequestEc2QuerySerializer()
      : super('AssociateIamInstanceProfileRequest');

  @override
  Iterable<Type> get types => const [
        AssociateIamInstanceProfileRequest,
        _$AssociateIamInstanceProfileRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AssociateIamInstanceProfileRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AssociateIamInstanceProfileRequestBuilder();
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
        case 'InstanceId':
          result.instanceId = (serializers.deserialize(
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
    AssociateIamInstanceProfileRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'AssociateIamInstanceProfileRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final AssociateIamInstanceProfileRequest(:iamInstanceProfile, :instanceId) =
        object;
    if (iamInstanceProfile != null) {
      result$
        ..add(const _i1.XmlElementName('IamInstanceProfile'))
        ..add(serializers.serialize(
          iamInstanceProfile,
          specifiedType: const FullType(IamInstanceProfileSpecification),
        ));
    }
    if (instanceId != null) {
      result$
        ..add(const _i1.XmlElementName('InstanceId'))
        ..add(serializers.serialize(
          instanceId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
