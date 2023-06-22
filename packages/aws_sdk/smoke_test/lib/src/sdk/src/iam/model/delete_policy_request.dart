// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.delete_policy_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_policy_request.g.dart';

abstract class DeletePolicyRequest
    with
        _i1.HttpInput<DeletePolicyRequest>,
        _i2.AWSEquatable<DeletePolicyRequest>
    implements Built<DeletePolicyRequest, DeletePolicyRequestBuilder> {
  factory DeletePolicyRequest({required String policyArn}) {
    return _$DeletePolicyRequest._(policyArn: policyArn);
  }

  factory DeletePolicyRequest.build(
          [void Function(DeletePolicyRequestBuilder) updates]) =
      _$DeletePolicyRequest;

  const DeletePolicyRequest._();

  factory DeletePolicyRequest.fromRequest(
    DeletePolicyRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DeletePolicyRequest>> serializers = [
    DeletePolicyRequestAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeletePolicyRequestBuilder b) {}

  /// The Amazon Resource Name (ARN) of the IAM policy you want to delete.
  ///
  /// For more information about ARNs, see [Amazon Resource Names (ARNs)](https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html) in the _Amazon Web Services General Reference_.
  String get policyArn;
  @override
  DeletePolicyRequest getPayload() => this;
  @override
  List<Object?> get props => [policyArn];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeletePolicyRequest')
      ..add(
        'policyArn',
        policyArn,
      );
    return helper.toString();
  }
}

class DeletePolicyRequestAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<DeletePolicyRequest> {
  const DeletePolicyRequestAwsQuerySerializer() : super('DeletePolicyRequest');

  @override
  Iterable<Type> get types => const [
        DeletePolicyRequest,
        _$DeletePolicyRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  DeletePolicyRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeletePolicyRequestBuilder();
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
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DeletePolicyRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DeletePolicyRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final DeletePolicyRequest(:policyArn) = object;
    result$
      ..add(const _i1.XmlElementName('PolicyArn'))
      ..add(serializers.serialize(
        policyArn,
        specifiedType: const FullType(String),
      ));
    return result$;
  }
}
