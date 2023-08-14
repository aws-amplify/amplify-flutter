// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.iam.model.detach_user_policy_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'detach_user_policy_request.g.dart';

abstract class DetachUserPolicyRequest
    with
        _i1.HttpInput<DetachUserPolicyRequest>,
        _i2.AWSEquatable<DetachUserPolicyRequest>
    implements Built<DetachUserPolicyRequest, DetachUserPolicyRequestBuilder> {
  factory DetachUserPolicyRequest({
    required String userName,
    required String policyArn,
  }) {
    return _$DetachUserPolicyRequest._(
      userName: userName,
      policyArn: policyArn,
    );
  }

  factory DetachUserPolicyRequest.build(
          [void Function(DetachUserPolicyRequestBuilder) updates]) =
      _$DetachUserPolicyRequest;

  const DetachUserPolicyRequest._();

  factory DetachUserPolicyRequest.fromRequest(
    DetachUserPolicyRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DetachUserPolicyRequest>> serializers =
      [DetachUserPolicyRequestAwsQuerySerializer()];

  /// The name (friendly name, not ARN) of the IAM user to detach the policy from.
  ///
  /// This parameter allows (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
  String get userName;

  /// The Amazon Resource Name (ARN) of the IAM policy you want to detach.
  ///
  /// For more information about ARNs, see [Amazon Resource Names (ARNs)](https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html) in the _Amazon Web Services General Reference_.
  String get policyArn;
  @override
  DetachUserPolicyRequest getPayload() => this;
  @override
  List<Object?> get props => [
        userName,
        policyArn,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DetachUserPolicyRequest')
      ..add(
        'userName',
        userName,
      )
      ..add(
        'policyArn',
        policyArn,
      );
    return helper.toString();
  }
}

class DetachUserPolicyRequestAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<DetachUserPolicyRequest> {
  const DetachUserPolicyRequestAwsQuerySerializer()
      : super('DetachUserPolicyRequest');

  @override
  Iterable<Type> get types => const [
        DetachUserPolicyRequest,
        _$DetachUserPolicyRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  DetachUserPolicyRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DetachUserPolicyRequestBuilder();
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
        case 'UserName':
          result.userName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'PolicyArn':
          result.policyArn = (serializers.deserialize(
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
    DetachUserPolicyRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DetachUserPolicyRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final DetachUserPolicyRequest(:userName, :policyArn) = object;
    result$
      ..add(const _i1.XmlElementName('UserName'))
      ..add(serializers.serialize(
        userName,
        specifiedType: const FullType(String),
      ));
    result$
      ..add(const _i1.XmlElementName('PolicyArn'))
      ..add(serializers.serialize(
        policyArn,
        specifiedType: const FullType(String),
      ));
    return result$;
  }
}
