// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.get_role_policy_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'get_role_policy_request.g.dart';

abstract class GetRolePolicyRequest
    with
        _i1.HttpInput<GetRolePolicyRequest>,
        _i2.AWSEquatable<GetRolePolicyRequest>
    implements Built<GetRolePolicyRequest, GetRolePolicyRequestBuilder> {
  factory GetRolePolicyRequest({
    required String roleName,
    required String policyName,
  }) {
    return _$GetRolePolicyRequest._(
      roleName: roleName,
      policyName: policyName,
    );
  }

  factory GetRolePolicyRequest.build(
          [void Function(GetRolePolicyRequestBuilder) updates]) =
      _$GetRolePolicyRequest;

  const GetRolePolicyRequest._();

  factory GetRolePolicyRequest.fromRequest(
    GetRolePolicyRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<GetRolePolicyRequest>> serializers = [
    GetRolePolicyRequestAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetRolePolicyRequestBuilder b) {}

  /// The name of the role associated with the policy.
  ///
  /// This parameter allows (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
  String get roleName;

  /// The name of the policy document to get.
  ///
  /// This parameter allows (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
  String get policyName;
  @override
  GetRolePolicyRequest getPayload() => this;
  @override
  List<Object?> get props => [
        roleName,
        policyName,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetRolePolicyRequest')
      ..add(
        'roleName',
        roleName,
      )
      ..add(
        'policyName',
        policyName,
      );
    return helper.toString();
  }
}

class GetRolePolicyRequestAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<GetRolePolicyRequest> {
  const GetRolePolicyRequestAwsQuerySerializer()
      : super('GetRolePolicyRequest');

  @override
  Iterable<Type> get types => const [
        GetRolePolicyRequest,
        _$GetRolePolicyRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  GetRolePolicyRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetRolePolicyRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'RoleName':
          result.roleName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'PolicyName':
          result.policyName = (serializers.deserialize(
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
    GetRolePolicyRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'GetRolePolicyRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final GetRolePolicyRequest(:roleName, :policyName) = object;
    result$
      ..add(const _i1.XmlElementName('RoleName'))
      ..add(serializers.serialize(
        roleName,
        specifiedType: const FullType(String),
      ));
    result$
      ..add(const _i1.XmlElementName('PolicyName'))
      ..add(serializers.serialize(
        policyName,
        specifiedType: const FullType(String),
      ));
    return result$;
  }
}
