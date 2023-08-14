// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.iam.model.create_policy_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/iam/model/policy.dart';

part 'create_policy_response.g.dart';

/// Contains the response to a successful CreatePolicy request.
abstract class CreatePolicyResponse
    with _i1.AWSEquatable<CreatePolicyResponse>
    implements Built<CreatePolicyResponse, CreatePolicyResponseBuilder> {
  /// Contains the response to a successful CreatePolicy request.
  factory CreatePolicyResponse({Policy? policy}) {
    return _$CreatePolicyResponse._(policy: policy);
  }

  /// Contains the response to a successful CreatePolicy request.
  factory CreatePolicyResponse.build(
          [void Function(CreatePolicyResponseBuilder) updates]) =
      _$CreatePolicyResponse;

  const CreatePolicyResponse._();

  /// Constructs a [CreatePolicyResponse] from a [payload] and [response].
  factory CreatePolicyResponse.fromResponse(
    CreatePolicyResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<CreatePolicyResponse>> serializers = [
    CreatePolicyResponseAwsQuerySerializer()
  ];

  /// A structure containing details about the new policy.
  Policy? get policy;
  @override
  List<Object?> get props => [policy];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreatePolicyResponse')
      ..add(
        'policy',
        policy,
      );
    return helper.toString();
  }
}

class CreatePolicyResponseAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<CreatePolicyResponse> {
  const CreatePolicyResponseAwsQuerySerializer()
      : super('CreatePolicyResponse');

  @override
  Iterable<Type> get types => const [
        CreatePolicyResponse,
        _$CreatePolicyResponse,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  CreatePolicyResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreatePolicyResponseBuilder();
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
    CreatePolicyResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'CreatePolicyResponseResponse',
        _i2.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final CreatePolicyResponse(:policy) = object;
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
