// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.create_policy_version_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/iam/model/policy_version.dart' as _i2;

part 'create_policy_version_response.g.dart';

/// Contains the response to a successful CreatePolicyVersion request.
abstract class CreatePolicyVersionResponse
    with _i1.AWSEquatable<CreatePolicyVersionResponse>
    implements
        Built<CreatePolicyVersionResponse, CreatePolicyVersionResponseBuilder> {
  /// Contains the response to a successful CreatePolicyVersion request.
  factory CreatePolicyVersionResponse({_i2.PolicyVersion? policyVersion}) {
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

  static const List<_i3.SmithySerializer<CreatePolicyVersionResponse>>
      serializers = [CreatePolicyVersionResponseAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreatePolicyVersionResponseBuilder b) {}

  /// A structure containing details about the new policy version.
  _i2.PolicyVersion? get policyVersion;
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
    extends _i3.StructuredSmithySerializer<CreatePolicyVersionResponse> {
  const CreatePolicyVersionResponseAwsQuerySerializer()
      : super('CreatePolicyVersionResponse');

  @override
  Iterable<Type> get types => const [
        CreatePolicyVersionResponse,
        _$CreatePolicyVersionResponse,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
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
            specifiedType: const FullType(_i2.PolicyVersion),
          ) as _i2.PolicyVersion));
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
      const _i3.XmlElementName(
        'CreatePolicyVersionResponseResponse',
        _i3.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final CreatePolicyVersionResponse(:policyVersion) = object;
    if (policyVersion != null) {
      result$
        ..add(const _i3.XmlElementName('PolicyVersion'))
        ..add(serializers.serialize(
          policyVersion,
          specifiedType: const FullType(_i2.PolicyVersion),
        ));
    }
    return result$;
  }
}
