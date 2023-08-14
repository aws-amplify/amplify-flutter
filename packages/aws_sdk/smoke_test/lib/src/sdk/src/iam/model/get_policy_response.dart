// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.iam.model.get_policy_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/iam/model/policy.dart';

part 'get_policy_response.g.dart';

/// Contains the response to a successful GetPolicy request.
abstract class GetPolicyResponse
    with _i1.AWSEquatable<GetPolicyResponse>
    implements Built<GetPolicyResponse, GetPolicyResponseBuilder> {
  /// Contains the response to a successful GetPolicy request.
  factory GetPolicyResponse({Policy? policy}) {
    return _$GetPolicyResponse._(policy: policy);
  }

  /// Contains the response to a successful GetPolicy request.
  factory GetPolicyResponse.build(
      [void Function(GetPolicyResponseBuilder) updates]) = _$GetPolicyResponse;

  const GetPolicyResponse._();

  /// Constructs a [GetPolicyResponse] from a [payload] and [response].
  factory GetPolicyResponse.fromResponse(
    GetPolicyResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<GetPolicyResponse>> serializers = [
    GetPolicyResponseAwsQuerySerializer()
  ];

  /// A structure containing details about the policy.
  Policy? get policy;
  @override
  List<Object?> get props => [policy];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetPolicyResponse')
      ..add(
        'policy',
        policy,
      );
    return helper.toString();
  }
}

class GetPolicyResponseAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<GetPolicyResponse> {
  const GetPolicyResponseAwsQuerySerializer() : super('GetPolicyResponse');

  @override
  Iterable<Type> get types => const [
        GetPolicyResponse,
        _$GetPolicyResponse,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  GetPolicyResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetPolicyResponseBuilder();
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
        case 'Policy':
          result.policy.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(Policy),
          ) as Policy));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetPolicyResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'GetPolicyResponseResponse',
        _i2.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final GetPolicyResponse(:policy) = object;
    if (policy != null) {
      result$
        ..add(const _i2.XmlElementName('Policy'))
        ..add(serializers.serialize(
          policy,
          specifiedType: const FullType(Policy),
        ));
    }
    return result$;
  }
}
