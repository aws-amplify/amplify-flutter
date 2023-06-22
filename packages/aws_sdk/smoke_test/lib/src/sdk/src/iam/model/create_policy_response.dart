// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.create_policy_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/iam/model/policy.dart' as _i2;

part 'create_policy_response.g.dart';

/// Contains the response to a successful CreatePolicy request.
abstract class CreatePolicyResponse
    with _i1.AWSEquatable<CreatePolicyResponse>
    implements Built<CreatePolicyResponse, CreatePolicyResponseBuilder> {
  /// Contains the response to a successful CreatePolicy request.
  factory CreatePolicyResponse({_i2.Policy? policy}) {
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

  static const List<_i3.SmithySerializer<CreatePolicyResponse>> serializers = [
    CreatePolicyResponseAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreatePolicyResponseBuilder b) {}

  /// A structure containing details about the new policy.
  _i2.Policy? get policy;
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
    extends _i3.StructuredSmithySerializer<CreatePolicyResponse> {
  const CreatePolicyResponseAwsQuerySerializer()
      : super('CreatePolicyResponse');

  @override
  Iterable<Type> get types => const [
        CreatePolicyResponse,
        _$CreatePolicyResponse,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
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
            specifiedType: const FullType(_i2.Policy),
          ) as _i2.Policy));
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
      const _i3.XmlElementName(
        'CreatePolicyResponseResponse',
        _i3.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final CreatePolicyResponse(:policy) = object;
    if (policy != null) {
      result$
        ..add(const _i3.XmlElementName('Policy'))
        ..add(serializers.serialize(
          policy,
          specifiedType: const FullType(_i2.Policy),
        ));
    }
    return result$;
  }
}
