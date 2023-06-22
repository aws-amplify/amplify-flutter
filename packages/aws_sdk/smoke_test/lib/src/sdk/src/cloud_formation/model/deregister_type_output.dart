// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.deregister_type_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'deregister_type_output.g.dart';

abstract class DeregisterTypeOutput
    with _i1.AWSEquatable<DeregisterTypeOutput>
    implements
        Built<DeregisterTypeOutput, DeregisterTypeOutputBuilder>,
        _i2.EmptyPayload {
  factory DeregisterTypeOutput() {
    return _$DeregisterTypeOutput._();
  }

  factory DeregisterTypeOutput.build(
          [void Function(DeregisterTypeOutputBuilder) updates]) =
      _$DeregisterTypeOutput;

  const DeregisterTypeOutput._();

  /// Constructs a [DeregisterTypeOutput] from a [payload] and [response].
  factory DeregisterTypeOutput.fromResponse(
    DeregisterTypeOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<DeregisterTypeOutput>> serializers = [
    DeregisterTypeOutputAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeregisterTypeOutputBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeregisterTypeOutput');
    return helper.toString();
  }
}

class DeregisterTypeOutputAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<DeregisterTypeOutput> {
  const DeregisterTypeOutputAwsQuerySerializer()
      : super('DeregisterTypeOutput');

  @override
  Iterable<Type> get types => const [
        DeregisterTypeOutput,
        _$DeregisterTypeOutput,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  DeregisterTypeOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return DeregisterTypeOutputBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DeregisterTypeOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'DeregisterTypeOutputResponse',
        _i2.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];

    return result$;
  }
}
