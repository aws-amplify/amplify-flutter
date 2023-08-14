// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.disassociate_enclave_certificate_iam_role_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'disassociate_enclave_certificate_iam_role_request.g.dart';

abstract class DisassociateEnclaveCertificateIamRoleRequest
    with
        _i1.HttpInput<DisassociateEnclaveCertificateIamRoleRequest>,
        _i2.AWSEquatable<DisassociateEnclaveCertificateIamRoleRequest>
    implements
        Built<DisassociateEnclaveCertificateIamRoleRequest,
            DisassociateEnclaveCertificateIamRoleRequestBuilder> {
  factory DisassociateEnclaveCertificateIamRoleRequest({
    String? certificateArn,
    String? roleArn,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$DisassociateEnclaveCertificateIamRoleRequest._(
      certificateArn: certificateArn,
      roleArn: roleArn,
      dryRun: dryRun,
    );
  }

  factory DisassociateEnclaveCertificateIamRoleRequest.build(
      [void Function(DisassociateEnclaveCertificateIamRoleRequestBuilder)
          updates]) = _$DisassociateEnclaveCertificateIamRoleRequest;

  const DisassociateEnclaveCertificateIamRoleRequest._();

  factory DisassociateEnclaveCertificateIamRoleRequest.fromRequest(
    DisassociateEnclaveCertificateIamRoleRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1.SmithySerializer<DisassociateEnclaveCertificateIamRoleRequest>>
      serializers = [
    DisassociateEnclaveCertificateIamRoleRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DisassociateEnclaveCertificateIamRoleRequestBuilder b) {
    b.dryRun = false;
  }

  /// The ARN of the ACM certificate from which to disassociate the IAM role.
  String? get certificateArn;

  /// The ARN of the IAM role to disassociate.
  String? get roleArn;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  DisassociateEnclaveCertificateIamRoleRequest getPayload() => this;
  @override
  List<Object?> get props => [
        certificateArn,
        roleArn,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DisassociateEnclaveCertificateIamRoleRequest')
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

class DisassociateEnclaveCertificateIamRoleRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<DisassociateEnclaveCertificateIamRoleRequest> {
  const DisassociateEnclaveCertificateIamRoleRequestEc2QuerySerializer()
      : super('DisassociateEnclaveCertificateIamRoleRequest');

  @override
  Iterable<Type> get types => const [
        DisassociateEnclaveCertificateIamRoleRequest,
        _$DisassociateEnclaveCertificateIamRoleRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DisassociateEnclaveCertificateIamRoleRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DisassociateEnclaveCertificateIamRoleRequestBuilder();
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
    DisassociateEnclaveCertificateIamRoleRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DisassociateEnclaveCertificateIamRoleRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DisassociateEnclaveCertificateIamRoleRequest(
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
