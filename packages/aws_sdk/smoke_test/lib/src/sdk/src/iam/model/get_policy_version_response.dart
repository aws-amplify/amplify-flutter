// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.iam.model.get_policy_version_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/iam/model/policy_version.dart';

part 'get_policy_version_response.g.dart';

/// Contains the response to a successful GetPolicyVersion request.
abstract class GetPolicyVersionResponse
    with _i1.AWSEquatable<GetPolicyVersionResponse>
    implements
        Built<GetPolicyVersionResponse, GetPolicyVersionResponseBuilder> {
  /// Contains the response to a successful GetPolicyVersion request.
  factory GetPolicyVersionResponse({PolicyVersion? policyVersion}) {
    return _$GetPolicyVersionResponse._(policyVersion: policyVersion);
  }

  /// Contains the response to a successful GetPolicyVersion request.
  factory GetPolicyVersionResponse.build(
          [void Function(GetPolicyVersionResponseBuilder) updates]) =
      _$GetPolicyVersionResponse;

  const GetPolicyVersionResponse._();

  /// Constructs a [GetPolicyVersionResponse] from a [payload] and [response].
  factory GetPolicyVersionResponse.fromResponse(
    GetPolicyVersionResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<GetPolicyVersionResponse>>
      serializers = [GetPolicyVersionResponseAwsQuerySerializer()];

  /// A structure containing details about the policy version.
  PolicyVersion? get policyVersion;
  @override
  List<Object?> get props => [policyVersion];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetPolicyVersionResponse')
      ..add(
        'policyVersion',
        policyVersion,
      );
    return helper.toString();
  }
}

class GetPolicyVersionResponseAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<GetPolicyVersionResponse> {
  const GetPolicyVersionResponseAwsQuerySerializer()
      : super('GetPolicyVersionResponse');

  @override
  Iterable<Type> get types => const [
        GetPolicyVersionResponse,
        _$GetPolicyVersionResponse,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  GetPolicyVersionResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetPolicyVersionResponseBuilder();
    final responseIterator = serialized.iterator;
    while (responseIterator.moveNext()) {
      final key = responseIterator.current as String;
      responseIterator.moveNext();
      if (key.endsWith('Result')) {
        serialized = responseIterator.current as Iterable;
      }
    }
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'PolicyVersion':
          result.policyVersion.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(PolicyVersion),
          ) as PolicyVersion));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetPolicyVersionResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'GetPolicyVersionResponseResponse',
        _i2.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final GetPolicyVersionResponse(:policyVersion) = object;
    if (policyVersion != null) {
      result$
        ..add(const _i2.XmlElementName('PolicyVersion'))
        ..add(serializers.serialize(
          policyVersion,
          specifiedType: const FullType(PolicyVersion),
        ));
    }
    return result$;
  }
}
