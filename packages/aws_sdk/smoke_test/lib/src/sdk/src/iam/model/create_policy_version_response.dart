// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.iam.model.create_policy_version_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/iam/model/policy_version.dart';

part 'create_policy_version_response.g.dart';

/// Contains the response to a successful CreatePolicyVersion request.
abstract class CreatePolicyVersionResponse
    with _i1.AWSEquatable<CreatePolicyVersionResponse>
    implements
        Built<CreatePolicyVersionResponse, CreatePolicyVersionResponseBuilder> {
  /// Contains the response to a successful CreatePolicyVersion request.
  factory CreatePolicyVersionResponse({PolicyVersion? policyVersion}) {
    return _$CreatePolicyVersionResponse._(policyVersion: policyVersion);
  }

  /// Contains the response to a successful CreatePolicyVersion request.
  factory CreatePolicyVersionResponse.build(
          [void Function(CreatePolicyVersionResponseBuilder) updates]) =
      _$CreatePolicyVersionResponse;

  const CreatePolicyVersionResponse._();

  /// Constructs a [CreatePolicyVersionResponse] from a [payload] and [response].
  factory CreatePolicyVersionResponse.fromResponse(
    CreatePolicyVersionResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<CreatePolicyVersionResponse>>
      serializers = [CreatePolicyVersionResponseAwsQuerySerializer()];

  /// A structure containing details about the new policy version.
  PolicyVersion? get policyVersion;
  @override
  List<Object?> get props => [policyVersion];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreatePolicyVersionResponse')
      ..add(
        'policyVersion',
        policyVersion,
      );
    return helper.toString();
  }
}

class CreatePolicyVersionResponseAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<CreatePolicyVersionResponse> {
  const CreatePolicyVersionResponseAwsQuerySerializer()
      : super('CreatePolicyVersionResponse');

  @override
  Iterable<Type> get types => const [
        CreatePolicyVersionResponse,
        _$CreatePolicyVersionResponse,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  CreatePolicyVersionResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreatePolicyVersionResponseBuilder();
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
    CreatePolicyVersionResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'CreatePolicyVersionResponseResponse',
        _i2.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final CreatePolicyVersionResponse(:policyVersion) = object;
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
