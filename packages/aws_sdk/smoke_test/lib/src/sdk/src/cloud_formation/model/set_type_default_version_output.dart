// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.set_type_default_version_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'set_type_default_version_output.g.dart';

abstract class SetTypeDefaultVersionOutput
    with _i1.AWSEquatable<SetTypeDefaultVersionOutput>
    implements
        Built<SetTypeDefaultVersionOutput, SetTypeDefaultVersionOutputBuilder>,
        _i2.EmptyPayload {
  factory SetTypeDefaultVersionOutput() {
    return _$SetTypeDefaultVersionOutput._();
  }

  factory SetTypeDefaultVersionOutput.build(
          [void Function(SetTypeDefaultVersionOutputBuilder) updates]) =
      _$SetTypeDefaultVersionOutput;

  const SetTypeDefaultVersionOutput._();

  /// Constructs a [SetTypeDefaultVersionOutput] from a [payload] and [response].
  factory SetTypeDefaultVersionOutput.fromResponse(
    SetTypeDefaultVersionOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<SetTypeDefaultVersionOutput>>
      serializers = [SetTypeDefaultVersionOutputAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SetTypeDefaultVersionOutputBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('SetTypeDefaultVersionOutput');
    return helper.toString();
  }
}

class SetTypeDefaultVersionOutputAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<SetTypeDefaultVersionOutput> {
  const SetTypeDefaultVersionOutputAwsQuerySerializer()
      : super('SetTypeDefaultVersionOutput');

  @override
  Iterable<Type> get types => const [
        SetTypeDefaultVersionOutput,
        _$SetTypeDefaultVersionOutput,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  SetTypeDefaultVersionOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return SetTypeDefaultVersionOutputBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    SetTypeDefaultVersionOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'SetTypeDefaultVersionOutputResponse',
        _i2.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];

    return result$;
  }
}
