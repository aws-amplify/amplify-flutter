// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.test_type_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'test_type_output.g.dart';

abstract class TestTypeOutput
    with _i1.AWSEquatable<TestTypeOutput>
    implements Built<TestTypeOutput, TestTypeOutputBuilder> {
  factory TestTypeOutput({String? typeVersionArn}) {
    return _$TestTypeOutput._(typeVersionArn: typeVersionArn);
  }

  factory TestTypeOutput.build([void Function(TestTypeOutputBuilder) updates]) =
      _$TestTypeOutput;

  const TestTypeOutput._();

  /// Constructs a [TestTypeOutput] from a [payload] and [response].
  factory TestTypeOutput.fromResponse(
    TestTypeOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<TestTypeOutput>> serializers = [
    TestTypeOutputAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TestTypeOutputBuilder b) {}

  /// The Amazon Resource Name (ARN) of the extension.
  String? get typeVersionArn;
  @override
  List<Object?> get props => [typeVersionArn];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TestTypeOutput')
      ..add(
        'typeVersionArn',
        typeVersionArn,
      );
    return helper.toString();
  }
}

class TestTypeOutputAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<TestTypeOutput> {
  const TestTypeOutputAwsQuerySerializer() : super('TestTypeOutput');

  @override
  Iterable<Type> get types => const [
        TestTypeOutput,
        _$TestTypeOutput,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  TestTypeOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TestTypeOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'TypeVersionArn':
          result.typeVersionArn = (serializers.deserialize(
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
    TestTypeOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'TestTypeOutputResponse',
        _i2.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final TestTypeOutput(:typeVersionArn) = object;
    if (typeVersionArn != null) {
      result$
        ..add(const _i2.XmlElementName('TypeVersionArn'))
        ..add(serializers.serialize(
          typeVersionArn,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
