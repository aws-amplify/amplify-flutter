// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.deactivate_type_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'deactivate_type_output.g.dart';

abstract class DeactivateTypeOutput
    with _i1.AWSEquatable<DeactivateTypeOutput>
    implements
        Built<DeactivateTypeOutput, DeactivateTypeOutputBuilder>,
        _i2.EmptyPayload {
  factory DeactivateTypeOutput() {
    return _$DeactivateTypeOutput._();
  }

  factory DeactivateTypeOutput.build(
          [void Function(DeactivateTypeOutputBuilder) updates]) =
      _$DeactivateTypeOutput;

  const DeactivateTypeOutput._();

  /// Constructs a [DeactivateTypeOutput] from a [payload] and [response].
  factory DeactivateTypeOutput.fromResponse(
    DeactivateTypeOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<DeactivateTypeOutput>> serializers = [
    DeactivateTypeOutputAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeactivateTypeOutputBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeactivateTypeOutput');
    return helper.toString();
  }
}

class DeactivateTypeOutputAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<DeactivateTypeOutput> {
  const DeactivateTypeOutputAwsQuerySerializer()
      : super('DeactivateTypeOutput');

  @override
  Iterable<Type> get types => const [
        DeactivateTypeOutput,
        _$DeactivateTypeOutput,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  DeactivateTypeOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return DeactivateTypeOutputBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DeactivateTypeOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'DeactivateTypeOutputResponse',
        _i2.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];

    return result$;
  }
}
