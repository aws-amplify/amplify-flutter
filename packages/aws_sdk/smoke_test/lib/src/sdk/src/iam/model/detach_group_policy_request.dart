// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.detach_group_policy_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'detach_group_policy_request.g.dart';

abstract class DetachGroupPolicyRequest
    with
        _i1.HttpInput<DetachGroupPolicyRequest>,
        _i2.AWSEquatable<DetachGroupPolicyRequest>
    implements
        Built<DetachGroupPolicyRequest, DetachGroupPolicyRequestBuilder> {
  factory DetachGroupPolicyRequest({
    required String groupName,
    required String policyArn,
  }) {
    return _$DetachGroupPolicyRequest._(
      groupName: groupName,
      policyArn: policyArn,
    );
  }

  factory DetachGroupPolicyRequest.build(
          [void Function(DetachGroupPolicyRequestBuilder) updates]) =
      _$DetachGroupPolicyRequest;

  const DetachGroupPolicyRequest._();

  factory DetachGroupPolicyRequest.fromRequest(
    DetachGroupPolicyRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DetachGroupPolicyRequest>>
      serializers = [DetachGroupPolicyRequestAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DetachGroupPolicyRequestBuilder b) {}

  /// The name (friendly name, not ARN) of the IAM group to detach the policy from.
  ///
  /// This parameter allows (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
  String get groupName;

  /// The Amazon Resource Name (ARN) of the IAM policy you want to detach.
  ///
  /// For more information about ARNs, see [Amazon Resource Names (ARNs)](https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html) in the _Amazon Web Services General Reference_.
  String get policyArn;
  @override
  DetachGroupPolicyRequest getPayload() => this;
  @override
  List<Object?> get props => [
        groupName,
        policyArn,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DetachGroupPolicyRequest')
      ..add(
        'groupName',
        groupName,
      )
      ..add(
        'policyArn',
        policyArn,
      );
    return helper.toString();
  }
}

class DetachGroupPolicyRequestAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<DetachGroupPolicyRequest> {
  const DetachGroupPolicyRequestAwsQuerySerializer()
      : super('DetachGroupPolicyRequest');

  @override
  Iterable<Type> get types => const [
        DetachGroupPolicyRequest,
        _$DetachGroupPolicyRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  DetachGroupPolicyRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DetachGroupPolicyRequestBuilder();
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
    DetachGroupPolicyRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DetachGroupPolicyRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final DetachGroupPolicyRequest(:groupName, :policyArn) = object;
    result$
      ..add(const _i1.XmlElementName('GroupName'))
      ..add(serializers.serialize(
        groupName,
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
