// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.detach_role_policy_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'detach_role_policy_request.g.dart';

abstract class DetachRolePolicyRequest
    with
        _i1.HttpInput<DetachRolePolicyRequest>,
        _i2.AWSEquatable<DetachRolePolicyRequest>
    implements Built<DetachRolePolicyRequest, DetachRolePolicyRequestBuilder> {
  factory DetachRolePolicyRequest({
    required String roleName,
    required String policyArn,
  }) {
    return _$DetachRolePolicyRequest._(
      roleName: roleName,
      policyArn: policyArn,
    );
  }

  factory DetachRolePolicyRequest.build(
          [void Function(DetachRolePolicyRequestBuilder) updates]) =
      _$DetachRolePolicyRequest;

  const DetachRolePolicyRequest._();

  factory DetachRolePolicyRequest.fromRequest(
    DetachRolePolicyRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DetachRolePolicyRequest>> serializers =
      [DetachRolePolicyRequestAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DetachRolePolicyRequestBuilder b) {}

  /// The name (friendly name, not ARN) of the IAM role to detach the policy from.
  ///
  /// This parameter allows (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
  String get roleName;

  /// The Amazon Resource Name (ARN) of the IAM policy you want to detach.
  ///
  /// For more information about ARNs, see [Amazon Resource Names (ARNs)](https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html) in the _Amazon Web Services General Reference_.
  String get policyArn;
  @override
  DetachRolePolicyRequest getPayload() => this;
  @override
  List<Object?> get props => [
        roleName,
        policyArn,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DetachRolePolicyRequest')
      ..add(
        'roleName',
        roleName,
      )
      ..add(
        'policyArn',
        policyArn,
      );
    return helper.toString();
  }
}

class DetachRolePolicyRequestAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<DetachRolePolicyRequest> {
  const DetachRolePolicyRequestAwsQuerySerializer()
      : super('DetachRolePolicyRequest');

  @override
  Iterable<Type> get types => const [
        DetachRolePolicyRequest,
        _$DetachRolePolicyRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  DetachRolePolicyRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DetachRolePolicyRequestBuilder();
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
    DetachRolePolicyRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DetachRolePolicyRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final DetachRolePolicyRequest(:roleName, :policyArn) = object;
    result$
      ..add(const _i1.XmlElementName('RoleName'))
      ..add(serializers.serialize(
        roleName,
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
