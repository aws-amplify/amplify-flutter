// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.get_associated_enclave_certificate_iam_roles_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'get_associated_enclave_certificate_iam_roles_request.g.dart';

abstract class GetAssociatedEnclaveCertificateIamRolesRequest
    with
        _i1.HttpInput<GetAssociatedEnclaveCertificateIamRolesRequest>,
        _i2.AWSEquatable<GetAssociatedEnclaveCertificateIamRolesRequest>
    implements
        Built<GetAssociatedEnclaveCertificateIamRolesRequest,
            GetAssociatedEnclaveCertificateIamRolesRequestBuilder> {
  factory GetAssociatedEnclaveCertificateIamRolesRequest({
    String? certificateArn,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$GetAssociatedEnclaveCertificateIamRolesRequest._(
      certificateArn: certificateArn,
      dryRun: dryRun,
    );
  }

  factory GetAssociatedEnclaveCertificateIamRolesRequest.build(
      [void Function(GetAssociatedEnclaveCertificateIamRolesRequestBuilder)
          updates]) = _$GetAssociatedEnclaveCertificateIamRolesRequest;

  const GetAssociatedEnclaveCertificateIamRolesRequest._();

  factory GetAssociatedEnclaveCertificateIamRolesRequest.fromRequest(
    GetAssociatedEnclaveCertificateIamRolesRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1.SmithySerializer<GetAssociatedEnclaveCertificateIamRolesRequest>>
      serializers = [
    GetAssociatedEnclaveCertificateIamRolesRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetAssociatedEnclaveCertificateIamRolesRequestBuilder b) {
    b.dryRun = false;
  }

  /// The ARN of the ACM certificate for which to view the associated IAM roles, encryption keys, and Amazon S3 object information.
  String? get certificateArn;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  GetAssociatedEnclaveCertificateIamRolesRequest getPayload() => this;
  @override
  List<Object?> get props => [
        certificateArn,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'GetAssociatedEnclaveCertificateIamRolesRequest')
      ..add(
        'certificateArn',
        certificateArn,
      )
      ..add(
        'dryRun',
        dryRun,
      );
    return helper.toString();
  }
}

class GetAssociatedEnclaveCertificateIamRolesRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<
        GetAssociatedEnclaveCertificateIamRolesRequest> {
  const GetAssociatedEnclaveCertificateIamRolesRequestEc2QuerySerializer()
      : super('GetAssociatedEnclaveCertificateIamRolesRequest');

  @override
  Iterable<Type> get types => const [
        GetAssociatedEnclaveCertificateIamRolesRequest,
        _$GetAssociatedEnclaveCertificateIamRolesRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  GetAssociatedEnclaveCertificateIamRolesRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetAssociatedEnclaveCertificateIamRolesRequestBuilder();
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
    GetAssociatedEnclaveCertificateIamRolesRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'GetAssociatedEnclaveCertificateIamRolesRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final GetAssociatedEnclaveCertificateIamRolesRequest(
      :certificateArn,
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
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
