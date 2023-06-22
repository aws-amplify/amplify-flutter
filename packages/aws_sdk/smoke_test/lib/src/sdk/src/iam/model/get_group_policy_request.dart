// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.get_group_policy_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'get_group_policy_request.g.dart';

abstract class GetGroupPolicyRequest
    with
        _i1.HttpInput<GetGroupPolicyRequest>,
        _i2.AWSEquatable<GetGroupPolicyRequest>
    implements Built<GetGroupPolicyRequest, GetGroupPolicyRequestBuilder> {
  factory GetGroupPolicyRequest({
    required String groupName,
    required String policyName,
  }) {
    return _$GetGroupPolicyRequest._(
      groupName: groupName,
      policyName: policyName,
    );
  }

  factory GetGroupPolicyRequest.build(
          [void Function(GetGroupPolicyRequestBuilder) updates]) =
      _$GetGroupPolicyRequest;

  const GetGroupPolicyRequest._();

  factory GetGroupPolicyRequest.fromRequest(
    GetGroupPolicyRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<GetGroupPolicyRequest>> serializers = [
    GetGroupPolicyRequestAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetGroupPolicyRequestBuilder b) {}

  /// The name of the group the policy is associated with.
  ///
  /// This parameter allows (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
  String get groupName;

  /// The name of the policy document to get.
  ///
  /// This parameter allows (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
  String get policyName;
  @override
  GetGroupPolicyRequest getPayload() => this;
  @override
  List<Object?> get props => [
        groupName,
        policyName,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetGroupPolicyRequest')
      ..add(
        'groupName',
        groupName,
      )
      ..add(
        'policyName',
        policyName,
      );
    return helper.toString();
  }
}

class GetGroupPolicyRequestAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<GetGroupPolicyRequest> {
  const GetGroupPolicyRequestAwsQuerySerializer()
      : super('GetGroupPolicyRequest');

  @override
  Iterable<Type> get types => const [
        GetGroupPolicyRequest,
        _$GetGroupPolicyRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  GetGroupPolicyRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetGroupPolicyRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'GroupName':
          result.groupName = (serializers.deserialize(
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
    GetGroupPolicyRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'GetGroupPolicyRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final GetGroupPolicyRequest(:groupName, :policyName) = object;
    result$
      ..add(const _i1.XmlElementName('GroupName'))
      ..add(serializers.serialize(
        groupName,
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
