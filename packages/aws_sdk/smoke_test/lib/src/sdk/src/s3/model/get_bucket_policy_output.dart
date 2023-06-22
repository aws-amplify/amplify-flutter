// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.s3.model.get_bucket_policy_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'get_bucket_policy_output.g.dart';

abstract class GetBucketPolicyOutput
    with _i1.AWSEquatable<GetBucketPolicyOutput>
    implements
        Built<GetBucketPolicyOutput, GetBucketPolicyOutputBuilder>,
        _i2.HasPayload<String> {
  factory GetBucketPolicyOutput({String? policy}) {
    return _$GetBucketPolicyOutput._(policy: policy);
  }

  factory GetBucketPolicyOutput.build(
          [void Function(GetBucketPolicyOutputBuilder) updates]) =
      _$GetBucketPolicyOutput;

  const GetBucketPolicyOutput._();

  /// Constructs a [GetBucketPolicyOutput] from a [payload] and [response].
  factory GetBucketPolicyOutput.fromResponse(
    String? payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      GetBucketPolicyOutput.build((b) {
        b.policy = payload;
      });

  static const List<_i2.SmithySerializer<String?>> serializers = [
    GetBucketPolicyOutputRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetBucketPolicyOutputBuilder b) {}

  /// The bucket policy as a JSON document.
  String? get policy;
  @override
  String? getPayload() => policy;
  @override
  List<Object?> get props => [policy];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetBucketPolicyOutput')
      ..add(
        'policy',
        policy,
      );
    return helper.toString();
  }
}

class GetBucketPolicyOutputRestXmlSerializer
    extends _i2.PrimitiveSmithySerializer<String> {
  const GetBucketPolicyOutputRestXmlSerializer()
      : super('GetBucketPolicyOutput');

  @override
  Iterable<Type> get types => const [
        GetBucketPolicyOutput,
        _$GetBucketPolicyOutput,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  String deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return (serializers.deserialize(
      serialized,
      specifiedType: const FullType(String),
    ) as String);
  }

  @override
  Object serialize(
    Serializers serializers,
    String object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'GetBucketPolicyOutput',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];

    result$.add(serializers.serialize(
      object,
      specifiedType: const FullType(String),
    ));
    return result$;
  }
}
