// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.s3.model.get_bucket_policy_status_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/policy_status.dart';

part 'get_bucket_policy_status_output.g.dart';

abstract class GetBucketPolicyStatusOutput
    with _i1.AWSEquatable<GetBucketPolicyStatusOutput>
    implements
        Built<GetBucketPolicyStatusOutput, GetBucketPolicyStatusOutputBuilder>,
        _i2.HasPayload<PolicyStatus> {
  factory GetBucketPolicyStatusOutput({PolicyStatus? policyStatus}) {
    return _$GetBucketPolicyStatusOutput._(policyStatus: policyStatus);
  }

  factory GetBucketPolicyStatusOutput.build(
          [void Function(GetBucketPolicyStatusOutputBuilder) updates]) =
      _$GetBucketPolicyStatusOutput;

  const GetBucketPolicyStatusOutput._();

  /// Constructs a [GetBucketPolicyStatusOutput] from a [payload] and [response].
  factory GetBucketPolicyStatusOutput.fromResponse(
    PolicyStatus? payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      GetBucketPolicyStatusOutput.build((b) {
        if (payload != null) {
          b.policyStatus.replace(payload);
        }
      });

  static const List<_i2.SmithySerializer<PolicyStatus?>> serializers = [
    GetBucketPolicyStatusOutputRestXmlSerializer()
  ];

  /// The policy status for the specified bucket.
  PolicyStatus? get policyStatus;
  @override
  PolicyStatus? getPayload() => policyStatus ?? PolicyStatus();
  @override
  List<Object?> get props => [policyStatus];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetBucketPolicyStatusOutput')
      ..add(
        'policyStatus',
        policyStatus,
      );
    return helper.toString();
  }
}

class GetBucketPolicyStatusOutputRestXmlSerializer
    extends _i2.StructuredSmithySerializer<PolicyStatus> {
  const GetBucketPolicyStatusOutputRestXmlSerializer()
      : super('GetBucketPolicyStatusOutput');

  @override
  Iterable<Type> get types => const [
        GetBucketPolicyStatusOutput,
        _$GetBucketPolicyStatusOutput,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  PolicyStatus deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PolicyStatusBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'IsPublic':
          result.isPublic = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    PolicyStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'PolicyStatus',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final PolicyStatus(:isPublic) = object;
    if (isPublic != null) {
      result$
        ..add(const _i2.XmlElementName('IsPublic'))
        ..add(serializers.serialize(
          isPublic,
          specifiedType: const FullType(bool),
        ));
    }
    return result$;
  }
}
