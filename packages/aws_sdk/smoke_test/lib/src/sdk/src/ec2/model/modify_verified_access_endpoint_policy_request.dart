// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.modify_verified_access_endpoint_policy_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'modify_verified_access_endpoint_policy_request.g.dart';

abstract class ModifyVerifiedAccessEndpointPolicyRequest
    with
        _i1.HttpInput<ModifyVerifiedAccessEndpointPolicyRequest>,
        _i2.AWSEquatable<ModifyVerifiedAccessEndpointPolicyRequest>
    implements
        Built<ModifyVerifiedAccessEndpointPolicyRequest,
            ModifyVerifiedAccessEndpointPolicyRequestBuilder> {
  factory ModifyVerifiedAccessEndpointPolicyRequest({
    String? verifiedAccessEndpointId,
    bool? policyEnabled,
    String? policyDocument,
    String? clientToken,
    bool? dryRun,
  }) {
    policyEnabled ??= false;
    dryRun ??= false;
    return _$ModifyVerifiedAccessEndpointPolicyRequest._(
      verifiedAccessEndpointId: verifiedAccessEndpointId,
      policyEnabled: policyEnabled,
      policyDocument: policyDocument,
      clientToken: clientToken,
      dryRun: dryRun,
    );
  }

  factory ModifyVerifiedAccessEndpointPolicyRequest.build(
      [void Function(ModifyVerifiedAccessEndpointPolicyRequestBuilder)
          updates]) = _$ModifyVerifiedAccessEndpointPolicyRequest;

  const ModifyVerifiedAccessEndpointPolicyRequest._();

  factory ModifyVerifiedAccessEndpointPolicyRequest.fromRequest(
    ModifyVerifiedAccessEndpointPolicyRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1.SmithySerializer<ModifyVerifiedAccessEndpointPolicyRequest>>
      serializers = [
    ModifyVerifiedAccessEndpointPolicyRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifyVerifiedAccessEndpointPolicyRequestBuilder b) {
    b
      ..policyEnabled = false
      ..clientToken = const bool.hasEnvironment('SMITHY_TEST')
          ? '00000000-0000-4000-8000-000000000000'
          : _i2.uuid(secure: true)
      ..dryRun = false;
  }

  /// The ID of the Verified Access endpoint.
  String? get verifiedAccessEndpointId;

  /// The status of the Verified Access policy.
  bool get policyEnabled;

  /// The Verified Access policy document.
  String? get policyDocument;

  /// A unique, case-sensitive token that you provide to ensure idempotency of your modification request. For more information, see [Ensuring Idempotency](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).
  String? get clientToken;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  ModifyVerifiedAccessEndpointPolicyRequest getPayload() => this;
  @override
  List<Object?> get props => [
        verifiedAccessEndpointId,
        policyEnabled,
        policyDocument,
        clientToken,
        dryRun,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ModifyVerifiedAccessEndpointPolicyRequest')
          ..add(
            'verifiedAccessEndpointId',
            verifiedAccessEndpointId,
          )
          ..add(
            'policyEnabled',
            policyEnabled,
          )
          ..add(
            'policyDocument',
            policyDocument,
          )
          ..add(
            'clientToken',
            clientToken,
          )
          ..add(
            'dryRun',
            dryRun,
          );
    return helper.toString();
  }
}

class ModifyVerifiedAccessEndpointPolicyRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<ModifyVerifiedAccessEndpointPolicyRequest> {
  const ModifyVerifiedAccessEndpointPolicyRequestEc2QuerySerializer()
      : super('ModifyVerifiedAccessEndpointPolicyRequest');

  @override
  Iterable<Type> get types => const [
        ModifyVerifiedAccessEndpointPolicyRequest,
        _$ModifyVerifiedAccessEndpointPolicyRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyVerifiedAccessEndpointPolicyRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyVerifiedAccessEndpointPolicyRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'VerifiedAccessEndpointId':
          result.verifiedAccessEndpointId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'PolicyEnabled':
          result.policyEnabled = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'PolicyDocument':
          result.policyDocument = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ClientToken':
          result.clientToken = (serializers.deserialize(
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
    ModifyVerifiedAccessEndpointPolicyRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'ModifyVerifiedAccessEndpointPolicyRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ModifyVerifiedAccessEndpointPolicyRequest(
      :verifiedAccessEndpointId,
      :policyEnabled,
      :policyDocument,
      :clientToken,
      :dryRun
    ) = object;
    if (verifiedAccessEndpointId != null) {
      result$
        ..add(const _i1.XmlElementName('VerifiedAccessEndpointId'))
        ..add(serializers.serialize(
          verifiedAccessEndpointId,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('PolicyEnabled'))
      ..add(serializers.serialize(
        policyEnabled,
        specifiedType: const FullType(bool),
      ));
    if (policyDocument != null) {
      result$
        ..add(const _i1.XmlElementName('PolicyDocument'))
        ..add(serializers.serialize(
          policyDocument,
          specifiedType: const FullType(String),
        ));
    }
    if (clientToken != null) {
      result$
        ..add(const _i1.XmlElementName('ClientToken'))
        ..add(serializers.serialize(
          clientToken,
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
