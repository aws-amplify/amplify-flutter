// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.get_verified_access_endpoint_policy_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'get_verified_access_endpoint_policy_request.g.dart';

abstract class GetVerifiedAccessEndpointPolicyRequest
    with
        _i1.HttpInput<GetVerifiedAccessEndpointPolicyRequest>,
        _i2.AWSEquatable<GetVerifiedAccessEndpointPolicyRequest>
    implements
        Built<GetVerifiedAccessEndpointPolicyRequest,
            GetVerifiedAccessEndpointPolicyRequestBuilder> {
  factory GetVerifiedAccessEndpointPolicyRequest({
    String? verifiedAccessEndpointId,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$GetVerifiedAccessEndpointPolicyRequest._(
      verifiedAccessEndpointId: verifiedAccessEndpointId,
      dryRun: dryRun,
    );
  }

  factory GetVerifiedAccessEndpointPolicyRequest.build(
      [void Function(GetVerifiedAccessEndpointPolicyRequestBuilder)
          updates]) = _$GetVerifiedAccessEndpointPolicyRequest;

  const GetVerifiedAccessEndpointPolicyRequest._();

  factory GetVerifiedAccessEndpointPolicyRequest.fromRequest(
    GetVerifiedAccessEndpointPolicyRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1.SmithySerializer<GetVerifiedAccessEndpointPolicyRequest>>
      serializers = [
    GetVerifiedAccessEndpointPolicyRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetVerifiedAccessEndpointPolicyRequestBuilder b) {
    b.dryRun = false;
  }

  /// The ID of the Verified Access endpoint.
  String? get verifiedAccessEndpointId;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  GetVerifiedAccessEndpointPolicyRequest getPayload() => this;
  @override
  List<Object?> get props => [
        verifiedAccessEndpointId,
        dryRun,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetVerifiedAccessEndpointPolicyRequest')
          ..add(
            'verifiedAccessEndpointId',
            verifiedAccessEndpointId,
          )
          ..add(
            'dryRun',
            dryRun,
          );
    return helper.toString();
  }
}

class GetVerifiedAccessEndpointPolicyRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<GetVerifiedAccessEndpointPolicyRequest> {
  const GetVerifiedAccessEndpointPolicyRequestEc2QuerySerializer()
      : super('GetVerifiedAccessEndpointPolicyRequest');

  @override
  Iterable<Type> get types => const [
        GetVerifiedAccessEndpointPolicyRequest,
        _$GetVerifiedAccessEndpointPolicyRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  GetVerifiedAccessEndpointPolicyRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetVerifiedAccessEndpointPolicyRequestBuilder();
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
    GetVerifiedAccessEndpointPolicyRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'GetVerifiedAccessEndpointPolicyRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final GetVerifiedAccessEndpointPolicyRequest(
      :verifiedAccessEndpointId,
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
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
