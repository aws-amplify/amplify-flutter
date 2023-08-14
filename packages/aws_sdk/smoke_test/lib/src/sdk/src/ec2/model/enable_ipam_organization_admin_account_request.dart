// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.enable_ipam_organization_admin_account_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'enable_ipam_organization_admin_account_request.g.dart';

abstract class EnableIpamOrganizationAdminAccountRequest
    with
        _i1.HttpInput<EnableIpamOrganizationAdminAccountRequest>,
        _i2.AWSEquatable<EnableIpamOrganizationAdminAccountRequest>
    implements
        Built<EnableIpamOrganizationAdminAccountRequest,
            EnableIpamOrganizationAdminAccountRequestBuilder> {
  factory EnableIpamOrganizationAdminAccountRequest({
    bool? dryRun,
    String? delegatedAdminAccountId,
  }) {
    dryRun ??= false;
    return _$EnableIpamOrganizationAdminAccountRequest._(
      dryRun: dryRun,
      delegatedAdminAccountId: delegatedAdminAccountId,
    );
  }

  factory EnableIpamOrganizationAdminAccountRequest.build(
      [void Function(EnableIpamOrganizationAdminAccountRequestBuilder)
          updates]) = _$EnableIpamOrganizationAdminAccountRequest;

  const EnableIpamOrganizationAdminAccountRequest._();

  factory EnableIpamOrganizationAdminAccountRequest.fromRequest(
    EnableIpamOrganizationAdminAccountRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1.SmithySerializer<EnableIpamOrganizationAdminAccountRequest>>
      serializers = [
    EnableIpamOrganizationAdminAccountRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(EnableIpamOrganizationAdminAccountRequestBuilder b) {
    b.dryRun = false;
  }

  /// A check for whether you have the required permissions for the action without actually making the request and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The Organizations member account ID that you want to enable as the IPAM account.
  String? get delegatedAdminAccountId;
  @override
  EnableIpamOrganizationAdminAccountRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        delegatedAdminAccountId,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('EnableIpamOrganizationAdminAccountRequest')
          ..add(
            'dryRun',
            dryRun,
          )
          ..add(
            'delegatedAdminAccountId',
            delegatedAdminAccountId,
          );
    return helper.toString();
  }
}

class EnableIpamOrganizationAdminAccountRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<EnableIpamOrganizationAdminAccountRequest> {
  const EnableIpamOrganizationAdminAccountRequestEc2QuerySerializer()
      : super('EnableIpamOrganizationAdminAccountRequest');

  @override
  Iterable<Type> get types => const [
        EnableIpamOrganizationAdminAccountRequest,
        _$EnableIpamOrganizationAdminAccountRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  EnableIpamOrganizationAdminAccountRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EnableIpamOrganizationAdminAccountRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'DelegatedAdminAccountId':
          result.delegatedAdminAccountId = (serializers.deserialize(
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
    EnableIpamOrganizationAdminAccountRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'EnableIpamOrganizationAdminAccountRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final EnableIpamOrganizationAdminAccountRequest(
      :dryRun,
      :delegatedAdminAccountId
    ) = object;
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (delegatedAdminAccountId != null) {
      result$
        ..add(const _i1.XmlElementName('DelegatedAdminAccountId'))
        ..add(serializers.serialize(
          delegatedAdminAccountId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
