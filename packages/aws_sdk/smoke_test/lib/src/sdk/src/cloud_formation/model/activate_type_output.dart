// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.activate_type_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'activate_type_output.g.dart';

abstract class ActivateTypeOutput
    with _i1.AWSEquatable<ActivateTypeOutput>
    implements Built<ActivateTypeOutput, ActivateTypeOutputBuilder> {
  factory ActivateTypeOutput({String? arn}) {
    return _$ActivateTypeOutput._(arn: arn);
  }

  factory ActivateTypeOutput.build(
          [void Function(ActivateTypeOutputBuilder) updates]) =
      _$ActivateTypeOutput;

  const ActivateTypeOutput._();

  /// Constructs a [ActivateTypeOutput] from a [payload] and [response].
  factory ActivateTypeOutput.fromResponse(
    ActivateTypeOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<ActivateTypeOutput>> serializers = [
    ActivateTypeOutputAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ActivateTypeOutputBuilder b) {}

  /// The Amazon Resource Name (ARN) of the activated extension, in this account and Region.
  String? get arn;
  @override
  List<Object?> get props => [arn];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ActivateTypeOutput')
      ..add(
        'arn',
        arn,
      );
    return helper.toString();
  }
}

class ActivateTypeOutputAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<ActivateTypeOutput> {
  const ActivateTypeOutputAwsQuerySerializer() : super('ActivateTypeOutput');

  @override
  Iterable<Type> get types => const [
        ActivateTypeOutput,
        _$ActivateTypeOutput,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  ActivateTypeOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ActivateTypeOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Arn':
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
    ActivateTypeOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ActivateTypeOutputResponse',
        _i2.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final ActivateTypeOutput(:arn) = object;
    if (arn != null) {
      result$
        ..add(const _i2.XmlElementName('Arn'))
        ..add(serializers.serialize(
          arn,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
