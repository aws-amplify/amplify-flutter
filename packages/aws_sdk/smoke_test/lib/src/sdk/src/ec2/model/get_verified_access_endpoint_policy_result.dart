// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.get_verified_access_endpoint_policy_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'get_verified_access_endpoint_policy_result.g.dart';

abstract class GetVerifiedAccessEndpointPolicyResult
    with
        _i1.AWSEquatable<GetVerifiedAccessEndpointPolicyResult>
    implements
        Built<GetVerifiedAccessEndpointPolicyResult,
            GetVerifiedAccessEndpointPolicyResultBuilder> {
  factory GetVerifiedAccessEndpointPolicyResult({
    bool? policyEnabled,
    String? policyDocument,
  }) {
    policyEnabled ??= false;
    return _$GetVerifiedAccessEndpointPolicyResult._(
      policyEnabled: policyEnabled,
      policyDocument: policyDocument,
    );
  }

  factory GetVerifiedAccessEndpointPolicyResult.build(
      [void Function(GetVerifiedAccessEndpointPolicyResultBuilder)
          updates]) = _$GetVerifiedAccessEndpointPolicyResult;

  const GetVerifiedAccessEndpointPolicyResult._();

  /// Constructs a [GetVerifiedAccessEndpointPolicyResult] from a [payload] and [response].
  factory GetVerifiedAccessEndpointPolicyResult.fromResponse(
    GetVerifiedAccessEndpointPolicyResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<GetVerifiedAccessEndpointPolicyResult>>
      serializers = [GetVerifiedAccessEndpointPolicyResultEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetVerifiedAccessEndpointPolicyResultBuilder b) {
    b.policyEnabled = false;
  }

  /// The status of the Verified Access policy.
  bool get policyEnabled;

  /// The Verified Access policy document.
  String? get policyDocument;
  @override
  List<Object?> get props => [
        policyEnabled,
        policyDocument,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetVerifiedAccessEndpointPolicyResult')
          ..add(
            'policyEnabled',
            policyEnabled,
          )
          ..add(
            'policyDocument',
            policyDocument,
          );
    return helper.toString();
  }
}

class GetVerifiedAccessEndpointPolicyResultEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<GetVerifiedAccessEndpointPolicyResult> {
  const GetVerifiedAccessEndpointPolicyResultEc2QuerySerializer()
      : super('GetVerifiedAccessEndpointPolicyResult');

  @override
  Iterable<Type> get types => const [
        GetVerifiedAccessEndpointPolicyResult,
        _$GetVerifiedAccessEndpointPolicyResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  GetVerifiedAccessEndpointPolicyResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetVerifiedAccessEndpointPolicyResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'policyEnabled':
          result.policyEnabled = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'policyDocument':
          result.policyDocument = (serializers.deserialize(
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
    GetVerifiedAccessEndpointPolicyResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'GetVerifiedAccessEndpointPolicyResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final GetVerifiedAccessEndpointPolicyResult(
      :policyEnabled,
      :policyDocument
    ) = object;
    result$
      ..add(const _i2.XmlElementName('PolicyEnabled'))
      ..add(serializers.serialize(
        policyEnabled,
        specifiedType: const FullType(bool),
      ));
    if (policyDocument != null) {
      result$
        ..add(const _i2.XmlElementName('PolicyDocument'))
        ..add(serializers.serialize(
          policyDocument,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
