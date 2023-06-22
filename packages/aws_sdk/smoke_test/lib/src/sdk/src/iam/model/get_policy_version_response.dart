// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.get_policy_version_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/iam/model/policy_version.dart' as _i2;

part 'get_policy_version_response.g.dart';

/// Contains the response to a successful GetPolicyVersion request.
abstract class GetPolicyVersionResponse
    with _i1.AWSEquatable<GetPolicyVersionResponse>
    implements
        Built<GetPolicyVersionResponse, GetPolicyVersionResponseBuilder> {
  /// Contains the response to a successful GetPolicyVersion request.
  factory GetPolicyVersionResponse({_i2.PolicyVersion? policyVersion}) {
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

  static const List<_i3.SmithySerializer<GetPolicyVersionResponse>>
      serializers = [GetPolicyVersionResponseAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetPolicyVersionResponseBuilder b) {}

  /// A structure containing details about the policy version.
  _i2.PolicyVersion? get policyVersion;
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
    extends _i3.StructuredSmithySerializer<GetPolicyVersionResponse> {
  const GetPolicyVersionResponseAwsQuerySerializer()
      : super('GetPolicyVersionResponse');

  @override
  Iterable<Type> get types => const [
        GetPolicyVersionResponse,
        _$GetPolicyVersionResponse,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
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
    GetPolicyVersionResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'GetPolicyVersionResponseResponse',
        _i3.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final GetPolicyVersionResponse(:policyVersion) = object;
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
