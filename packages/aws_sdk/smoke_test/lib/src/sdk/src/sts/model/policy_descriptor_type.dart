// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.sts.model.policy_descriptor_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'policy_descriptor_type.g.dart';

/// A reference to the IAM managed policy that is passed as a session policy for a role session or a federated user session.
abstract class PolicyDescriptorType
    with _i1.AWSEquatable<PolicyDescriptorType>
    implements Built<PolicyDescriptorType, PolicyDescriptorTypeBuilder> {
  /// A reference to the IAM managed policy that is passed as a session policy for a role session or a federated user session.
  factory PolicyDescriptorType({String? arn}) {
    return _$PolicyDescriptorType._(arn: arn);
  }

  /// A reference to the IAM managed policy that is passed as a session policy for a role session or a federated user session.
  factory PolicyDescriptorType.build(
          [void Function(PolicyDescriptorTypeBuilder) updates]) =
      _$PolicyDescriptorType;

  const PolicyDescriptorType._();

  static const List<_i2.SmithySerializer<PolicyDescriptorType>> serializers = [
    PolicyDescriptorTypeAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PolicyDescriptorTypeBuilder b) {}

  /// The Amazon Resource Name (ARN) of the IAM managed policy to use as a session policy for the role. For more information about ARNs, see [Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces](https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html) in the _Amazon Web Services General Reference_.
  String? get arn;
  @override
  List<Object?> get props => [arn];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PolicyDescriptorType')
      ..add(
        'arn',
        arn,
      );
    return helper.toString();
  }
}

class PolicyDescriptorTypeAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<PolicyDescriptorType> {
  const PolicyDescriptorTypeAwsQuerySerializer()
      : super('PolicyDescriptorType');

  @override
  Iterable<Type> get types => const [
        PolicyDescriptorType,
        _$PolicyDescriptorType,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  PolicyDescriptorType deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PolicyDescriptorTypeBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'arn':
          result.arn = (serializers.deserialize(
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
    PolicyDescriptorType object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'PolicyDescriptorTypeResponse',
        _i2.XmlNamespace('https://sts.amazonaws.com/doc/2011-06-15/'),
      )
    ];
    final PolicyDescriptorType(:arn) = object;
    if (arn != null) {
      result$
        ..add(const _i2.XmlElementName('arn'))
        ..add(serializers.serialize(
          arn,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
