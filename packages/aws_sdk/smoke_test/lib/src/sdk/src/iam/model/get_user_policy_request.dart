// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.get_user_policy_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'get_user_policy_request.g.dart';

abstract class GetUserPolicyRequest
    with
        _i1.HttpInput<GetUserPolicyRequest>,
        _i2.AWSEquatable<GetUserPolicyRequest>
    implements Built<GetUserPolicyRequest, GetUserPolicyRequestBuilder> {
  factory GetUserPolicyRequest({
    required String userName,
    required String policyName,
  }) {
    return _$GetUserPolicyRequest._(
      userName: userName,
      policyName: policyName,
    );
  }

  factory GetUserPolicyRequest.build(
          [void Function(GetUserPolicyRequestBuilder) updates]) =
      _$GetUserPolicyRequest;

  const GetUserPolicyRequest._();

  factory GetUserPolicyRequest.fromRequest(
    GetUserPolicyRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<GetUserPolicyRequest>> serializers = [
    GetUserPolicyRequestAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetUserPolicyRequestBuilder b) {}

  /// The name of the user who the policy is associated with.
  ///
  /// This parameter allows (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
  String get userName;

  /// The name of the policy document to get.
  ///
  /// This parameter allows (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
  String get policyName;
  @override
  GetUserPolicyRequest getPayload() => this;
  @override
  List<Object?> get props => [
        userName,
        policyName,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetUserPolicyRequest')
      ..add(
        'userName',
        userName,
      )
      ..add(
        'policyName',
        policyName,
      );
    return helper.toString();
  }
}

class GetUserPolicyRequestAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<GetUserPolicyRequest> {
  const GetUserPolicyRequestAwsQuerySerializer()
      : super('GetUserPolicyRequest');

  @override
  Iterable<Type> get types => const [
        GetUserPolicyRequest,
        _$GetUserPolicyRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  GetUserPolicyRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetUserPolicyRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'UserName':
          result.userName = (serializers.deserialize(
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
    GetUserPolicyRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'GetUserPolicyRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final GetUserPolicyRequest(:userName, :policyName) = object;
    result$
      ..add(const _i1.XmlElementName('UserName'))
      ..add(serializers.serialize(
        userName,
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
