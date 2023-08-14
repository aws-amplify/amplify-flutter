// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.associate_enclave_certificate_iam_role_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'associate_enclave_certificate_iam_role_request.g.dart';

abstract class AssociateEnclaveCertificateIamRoleRequest
    with
        _i1.HttpInput<AssociateEnclaveCertificateIamRoleRequest>,
        _i2.AWSEquatable<AssociateEnclaveCertificateIamRoleRequest>
    implements
        Built<AssociateEnclaveCertificateIamRoleRequest,
            AssociateEnclaveCertificateIamRoleRequestBuilder> {
  factory AssociateEnclaveCertificateIamRoleRequest({
    String? certificateArn,
    String? roleArn,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$AssociateEnclaveCertificateIamRoleRequest._(
      certificateArn: certificateArn,
      roleArn: roleArn,
      dryRun: dryRun,
    );
  }

  factory AssociateEnclaveCertificateIamRoleRequest.build(
      [void Function(AssociateEnclaveCertificateIamRoleRequestBuilder)
          updates]) = _$AssociateEnclaveCertificateIamRoleRequest;

  const AssociateEnclaveCertificateIamRoleRequest._();

  factory AssociateEnclaveCertificateIamRoleRequest.fromRequest(
    AssociateEnclaveCertificateIamRoleRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1.SmithySerializer<AssociateEnclaveCertificateIamRoleRequest>>
      serializers = [
    AssociateEnclaveCertificateIamRoleRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AssociateEnclaveCertificateIamRoleRequestBuilder b) {
    b.dryRun = false;
  }

  /// The ARN of the ACM certificate with which to associate the IAM role.
  String? get certificateArn;

  /// The ARN of the IAM role to associate with the ACM certificate. You can associate up to 16 IAM roles with an ACM certificate.
  String? get roleArn;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  AssociateEnclaveCertificateIamRoleRequest getPayload() => this;
  @override
  List<Object?> get props => [
        certificateArn,
        roleArn,
        dryRun,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('AssociateEnclaveCertificateIamRoleRequest')
          ..add(
            'certificateArn',
            certificateArn,
          )
          ..add(
            'roleArn',
            roleArn,
          )
          ..add(
            'dryRun',
            dryRun,
          );
    return helper.toString();
  }
}

class AssociateEnclaveCertificateIamRoleRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<AssociateEnclaveCertificateIamRoleRequest> {
  const AssociateEnclaveCertificateIamRoleRequestEc2QuerySerializer()
      : super('AssociateEnclaveCertificateIamRoleRequest');

  @override
  Iterable<Type> get types => const [
        AssociateEnclaveCertificateIamRoleRequest,
        _$AssociateEnclaveCertificateIamRoleRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AssociateEnclaveCertificateIamRoleRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AssociateEnclaveCertificateIamRoleRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'CertificateArn':
          result.certificateArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'RoleArn':
          result.roleArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    AssociateEnclaveCertificateIamRoleRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'AssociateEnclaveCertificateIamRoleRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final AssociateEnclaveCertificateIamRoleRequest(
      :certificateArn,
      :roleArn,
      :dryRun
    ) = object;
    if (certificateArn != null) {
      result$
        ..add(const _i1.XmlElementName('CertificateArn'))
        ..add(serializers.serialize(
          certificateArn,
          specifiedType: const FullType(String),
        ));
    }
    if (roleArn != null) {
      result$
        ..add(const _i1.XmlElementName('RoleArn'))
        ..add(serializers.serialize(
          roleArn,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
