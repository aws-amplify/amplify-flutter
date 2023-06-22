// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.generate_organizations_access_report_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'generate_organizations_access_report_request.g.dart';

abstract class GenerateOrganizationsAccessReportRequest
    with
        _i1.HttpInput<GenerateOrganizationsAccessReportRequest>,
        _i2.AWSEquatable<GenerateOrganizationsAccessReportRequest>
    implements
        Built<GenerateOrganizationsAccessReportRequest,
            GenerateOrganizationsAccessReportRequestBuilder> {
  factory GenerateOrganizationsAccessReportRequest({
    required String entityPath,
    String? organizationsPolicyId,
  }) {
    return _$GenerateOrganizationsAccessReportRequest._(
      entityPath: entityPath,
      organizationsPolicyId: organizationsPolicyId,
    );
  }

  factory GenerateOrganizationsAccessReportRequest.build(
      [void Function(GenerateOrganizationsAccessReportRequestBuilder)
          updates]) = _$GenerateOrganizationsAccessReportRequest;

  const GenerateOrganizationsAccessReportRequest._();

  factory GenerateOrganizationsAccessReportRequest.fromRequest(
    GenerateOrganizationsAccessReportRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1.SmithySerializer<GenerateOrganizationsAccessReportRequest>>
      serializers = [
    GenerateOrganizationsAccessReportRequestAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GenerateOrganizationsAccessReportRequestBuilder b) {}

  /// The path of the Organizations entity (root, OU, or account). You can build an entity path using the known structure of your organization. For example, assume that your account ID is `123456789012` and its parent OU ID is `ou-rge0-awsabcde`. The organization root ID is `r-f6g7h8i9j0example` and your organization ID is `o-a1b2c3d4e5`. Your entity path is `o-a1b2c3d4e5/r-f6g7h8i9j0example/ou-rge0-awsabcde/123456789012`.
  String get entityPath;

  /// The identifier of the Organizations service control policy (SCP). This parameter is optional.
  ///
  /// This ID is used to generate information about when an account principal that is limited by the SCP attempted to access an Amazon Web Services service.
  String? get organizationsPolicyId;
  @override
  GenerateOrganizationsAccessReportRequest getPayload() => this;
  @override
  List<Object?> get props => [
        entityPath,
        organizationsPolicyId,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GenerateOrganizationsAccessReportRequest')
          ..add(
            'entityPath',
            entityPath,
          )
          ..add(
            'organizationsPolicyId',
            organizationsPolicyId,
          );
    return helper.toString();
  }
}

class GenerateOrganizationsAccessReportRequestAwsQuerySerializer extends _i1
    .StructuredSmithySerializer<GenerateOrganizationsAccessReportRequest> {
  const GenerateOrganizationsAccessReportRequestAwsQuerySerializer()
      : super('GenerateOrganizationsAccessReportRequest');

  @override
  Iterable<Type> get types => const [
        GenerateOrganizationsAccessReportRequest,
        _$GenerateOrganizationsAccessReportRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  GenerateOrganizationsAccessReportRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GenerateOrganizationsAccessReportRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'EntityPath':
          result.entityPath = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'OrganizationsPolicyId':
          result.organizationsPolicyId = (serializers.deserialize(
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
    GenerateOrganizationsAccessReportRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'GenerateOrganizationsAccessReportRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final GenerateOrganizationsAccessReportRequest(
      :entityPath,
      :organizationsPolicyId
    ) = object;
    result$
      ..add(const _i1.XmlElementName('EntityPath'))
      ..add(serializers.serialize(
        entityPath,
        specifiedType: const FullType(String),
      ));
    if (organizationsPolicyId != null) {
      result$
        ..add(const _i1.XmlElementName('OrganizationsPolicyId'))
        ..add(serializers.serialize(
          organizationsPolicyId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
