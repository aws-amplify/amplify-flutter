// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.iam.model.delete_policy_version_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_policy_version_request.g.dart';

abstract class DeletePolicyVersionRequest
    with
        _i1.HttpInput<DeletePolicyVersionRequest>,
        _i2.AWSEquatable<DeletePolicyVersionRequest>
    implements
        Built<DeletePolicyVersionRequest, DeletePolicyVersionRequestBuilder> {
  factory DeletePolicyVersionRequest({
    required String policyArn,
    required String versionId,
  }) {
    return _$DeletePolicyVersionRequest._(
      policyArn: policyArn,
      versionId: versionId,
    );
  }

  factory DeletePolicyVersionRequest.build(
          [void Function(DeletePolicyVersionRequestBuilder) updates]) =
      _$DeletePolicyVersionRequest;

  const DeletePolicyVersionRequest._();

  factory DeletePolicyVersionRequest.fromRequest(
    DeletePolicyVersionRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DeletePolicyVersionRequestAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeletePolicyVersionRequestBuilder b) {}

  /// The Amazon Resource Name (ARN) of the IAM policy from which you want to delete a version.
  ///
  /// For more information about ARNs, see [Amazon Resource Names (ARNs)](https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html) in the _Amazon Web Services General Reference_.
  String get policyArn;

  /// The policy version to delete.
  ///
  /// This parameter allows (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters that consists of the lowercase letter 'v' followed by one or two digits, and optionally followed by a period '.' and a string of letters and digits.
  ///
  /// For more information about managed policy versions, see [Versioning for managed policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html) in the _IAM User Guide_.
  String get versionId;
  @override
  DeletePolicyVersionRequest getPayload() => this;
  @override
  List<Object?> get props => [
        policyArn,
        versionId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeletePolicyVersionRequest');
    helper.add(
      'policyArn',
      policyArn,
    );
    helper.add(
      'versionId',
      versionId,
    );
    return helper.toString();
  }
}

class DeletePolicyVersionRequestAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<DeletePolicyVersionRequest> {
  const DeletePolicyVersionRequestAwsQuerySerializer()
      : super('DeletePolicyVersionRequest');

  @override
  Iterable<Type> get types => const [
        DeletePolicyVersionRequest,
        _$DeletePolicyVersionRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  DeletePolicyVersionRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeletePolicyVersionRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'PolicyArn':
          result.policyArn = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'VersionId':
          result.versionId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as DeletePolicyVersionRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'DeletePolicyVersionRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('PolicyArn'))
      ..add(serializers.serialize(
        payload.policyArn,
        specifiedType: const FullType(String),
      ));
    result
      ..add(const _i1.XmlElementName('VersionId'))
      ..add(serializers.serialize(
        payload.versionId,
        specifiedType: const FullType(String),
      ));
    return result;
  }
}
