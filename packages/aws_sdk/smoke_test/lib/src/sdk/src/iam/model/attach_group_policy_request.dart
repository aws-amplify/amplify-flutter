// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.attach_group_policy_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'attach_group_policy_request.g.dart';

abstract class AttachGroupPolicyRequest
    with
        _i1.HttpInput<AttachGroupPolicyRequest>,
        _i2.AWSEquatable<AttachGroupPolicyRequest>
    implements
        Built<AttachGroupPolicyRequest, AttachGroupPolicyRequestBuilder> {
  factory AttachGroupPolicyRequest({
    required String groupName,
    required String policyArn,
  }) {
    return _$AttachGroupPolicyRequest._(
      groupName: groupName,
      policyArn: policyArn,
    );
  }

  factory AttachGroupPolicyRequest.build(
          [void Function(AttachGroupPolicyRequestBuilder) updates]) =
      _$AttachGroupPolicyRequest;

  const AttachGroupPolicyRequest._();

  factory AttachGroupPolicyRequest.fromRequest(
    AttachGroupPolicyRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<AttachGroupPolicyRequest>>
      serializers = [AttachGroupPolicyRequestAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AttachGroupPolicyRequestBuilder b) {}

  /// The name (friendly name, not ARN) of the group to attach the policy to.
  ///
  /// This parameter allows (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
  String get groupName;

  /// The Amazon Resource Name (ARN) of the IAM policy you want to attach.
  ///
  /// For more information about ARNs, see [Amazon Resource Names (ARNs)](https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html) in the _Amazon Web Services General Reference_.
  String get policyArn;
  @override
  AttachGroupPolicyRequest getPayload() => this;
  @override
  List<Object?> get props => [
        groupName,
        policyArn,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AttachGroupPolicyRequest')
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

class AttachGroupPolicyRequestAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<AttachGroupPolicyRequest> {
  const AttachGroupPolicyRequestAwsQuerySerializer()
      : super('AttachGroupPolicyRequest');

  @override
  Iterable<Type> get types => const [
        AttachGroupPolicyRequest,
        _$AttachGroupPolicyRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  AttachGroupPolicyRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AttachGroupPolicyRequestBuilder();
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
    AttachGroupPolicyRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'AttachGroupPolicyRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final AttachGroupPolicyRequest(:groupName, :policyArn) = object;
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
