// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.disable_ipam_organization_admin_account_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'disable_ipam_organization_admin_account_request.g.dart';

abstract class DisableIpamOrganizationAdminAccountRequest
    with
        _i1.HttpInput<DisableIpamOrganizationAdminAccountRequest>,
        _i2.AWSEquatable<DisableIpamOrganizationAdminAccountRequest>
    implements
        Built<DisableIpamOrganizationAdminAccountRequest,
            DisableIpamOrganizationAdminAccountRequestBuilder> {
  factory DisableIpamOrganizationAdminAccountRequest({
    bool? dryRun,
    String? delegatedAdminAccountId,
  }) {
    dryRun ??= false;
    return _$DisableIpamOrganizationAdminAccountRequest._(
      dryRun: dryRun,
      delegatedAdminAccountId: delegatedAdminAccountId,
    );
  }

  factory DisableIpamOrganizationAdminAccountRequest.build(
      [void Function(DisableIpamOrganizationAdminAccountRequestBuilder)
          updates]) = _$DisableIpamOrganizationAdminAccountRequest;

  const DisableIpamOrganizationAdminAccountRequest._();

  factory DisableIpamOrganizationAdminAccountRequest.fromRequest(
    DisableIpamOrganizationAdminAccountRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1.SmithySerializer<DisableIpamOrganizationAdminAccountRequest>>
      serializers = [
    DisableIpamOrganizationAdminAccountRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DisableIpamOrganizationAdminAccountRequestBuilder b) {
    b.dryRun = false;
  }

  /// A check for whether you have the required permissions for the action without actually making the request and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The Organizations member account ID that you want to disable as IPAM account.
  String? get delegatedAdminAccountId;
  @override
  DisableIpamOrganizationAdminAccountRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        delegatedAdminAccountId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DisableIpamOrganizationAdminAccountRequest')
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

class DisableIpamOrganizationAdminAccountRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<DisableIpamOrganizationAdminAccountRequest> {
  const DisableIpamOrganizationAdminAccountRequestEc2QuerySerializer()
      : super('DisableIpamOrganizationAdminAccountRequest');

  @override
  Iterable<Type> get types => const [
        DisableIpamOrganizationAdminAccountRequest,
        _$DisableIpamOrganizationAdminAccountRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DisableIpamOrganizationAdminAccountRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DisableIpamOrganizationAdminAccountRequestBuilder();
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
    DisableIpamOrganizationAdminAccountRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DisableIpamOrganizationAdminAccountRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DisableIpamOrganizationAdminAccountRequest(
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
