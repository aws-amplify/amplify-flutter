// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.iam.model.get_policy_version_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'get_policy_version_request.g.dart';

abstract class GetPolicyVersionRequest
    with
        _i1.HttpInput<GetPolicyVersionRequest>,
        _i2.AWSEquatable<GetPolicyVersionRequest>
    implements Built<GetPolicyVersionRequest, GetPolicyVersionRequestBuilder> {
  factory GetPolicyVersionRequest({
    required String policyArn,
    required String versionId,
  }) {
    return _$GetPolicyVersionRequest._(
      policyArn: policyArn,
      versionId: versionId,
    );
  }

  factory GetPolicyVersionRequest.build(
          [void Function(GetPolicyVersionRequestBuilder) updates]) =
      _$GetPolicyVersionRequest;

  const GetPolicyVersionRequest._();

  factory GetPolicyVersionRequest.fromRequest(
    GetPolicyVersionRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    GetPolicyVersionRequestAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetPolicyVersionRequestBuilder b) {}

  /// The Amazon Resource Name (ARN) of the managed policy that you want information about.
  ///
  /// For more information about ARNs, see [Amazon Resource Names (ARNs)](https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html) in the _Amazon Web Services General Reference_.
  String get policyArn;

  /// Identifies the policy version to retrieve.
  ///
  /// This parameter allows (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters that consists of the lowercase letter 'v' followed by one or two digits, and optionally followed by a period '.' and a string of letters and digits.
  String get versionId;
  @override
  GetPolicyVersionRequest getPayload() => this;
  @override
  List<Object?> get props => [
        policyArn,
        versionId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetPolicyVersionRequest');
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

class GetPolicyVersionRequestAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<GetPolicyVersionRequest> {
  const GetPolicyVersionRequestAwsQuerySerializer()
      : super('GetPolicyVersionRequest');

  @override
  Iterable<Type> get types => const [
        GetPolicyVersionRequest,
        _$GetPolicyVersionRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  GetPolicyVersionRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetPolicyVersionRequestBuilder();
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
    final payload = (object as GetPolicyVersionRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'GetPolicyVersionRequestResponse',
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
