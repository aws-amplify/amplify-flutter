// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.set_default_policy_version_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'set_default_policy_version_request.g.dart';

abstract class SetDefaultPolicyVersionRequest
    with
        _i1.HttpInput<SetDefaultPolicyVersionRequest>,
        _i2.AWSEquatable<SetDefaultPolicyVersionRequest>
    implements
        Built<SetDefaultPolicyVersionRequest,
            SetDefaultPolicyVersionRequestBuilder> {
  factory SetDefaultPolicyVersionRequest({
    required String policyArn,
    required String versionId,
  }) {
    return _$SetDefaultPolicyVersionRequest._(
      policyArn: policyArn,
      versionId: versionId,
    );
  }

  factory SetDefaultPolicyVersionRequest.build(
          [void Function(SetDefaultPolicyVersionRequestBuilder) updates]) =
      _$SetDefaultPolicyVersionRequest;

  const SetDefaultPolicyVersionRequest._();

  factory SetDefaultPolicyVersionRequest.fromRequest(
    SetDefaultPolicyVersionRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<SetDefaultPolicyVersionRequest>>
      serializers = [SetDefaultPolicyVersionRequestAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SetDefaultPolicyVersionRequestBuilder b) {}

  /// The Amazon Resource Name (ARN) of the IAM policy whose default version you want to set.
  ///
  /// For more information about ARNs, see [Amazon Resource Names (ARNs)](https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html) in the _Amazon Web Services General Reference_.
  String get policyArn;

  /// The version of the policy to set as the default (operative) version.
  ///
  /// For more information about managed policy versions, see [Versioning for managed policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html) in the _IAM User Guide_.
  String get versionId;
  @override
  SetDefaultPolicyVersionRequest getPayload() => this;
  @override
  List<Object?> get props => [
        policyArn,
        versionId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('SetDefaultPolicyVersionRequest')
      ..add(
        'policyArn',
        policyArn,
      )
      ..add(
        'versionId',
        versionId,
      );
    return helper.toString();
  }
}

class SetDefaultPolicyVersionRequestAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<SetDefaultPolicyVersionRequest> {
  const SetDefaultPolicyVersionRequestAwsQuerySerializer()
      : super('SetDefaultPolicyVersionRequest');

  @override
  Iterable<Type> get types => const [
        SetDefaultPolicyVersionRequest,
        _$SetDefaultPolicyVersionRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  SetDefaultPolicyVersionRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SetDefaultPolicyVersionRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'PolicyArn':
          result.policyArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'VersionId':
          result.versionId = (serializers.deserialize(
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
    SetDefaultPolicyVersionRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'SetDefaultPolicyVersionRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final SetDefaultPolicyVersionRequest(:policyArn, :versionId) = object;
    result$
      ..add(const _i1.XmlElementName('PolicyArn'))
      ..add(serializers.serialize(
        policyArn,
        specifiedType: const FullType(String),
      ));
    result$
      ..add(const _i1.XmlElementName('VersionId'))
      ..add(serializers.serialize(
        versionId,
        specifiedType: const FullType(String),
      ));
    return result$;
  }
}
