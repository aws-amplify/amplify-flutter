// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.dynamo_db.model.describe_import_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'describe_import_input.g.dart';

abstract class DescribeImportInput
    with
        _i1.HttpInput<DescribeImportInput>,
        _i2.AWSEquatable<DescribeImportInput>
    implements Built<DescribeImportInput, DescribeImportInputBuilder> {
  factory DescribeImportInput({required String importArn}) {
    return _$DescribeImportInput._(importArn: importArn);
  }

  factory DescribeImportInput.build(
          [void Function(DescribeImportInputBuilder) updates]) =
      _$DescribeImportInput;

  const DescribeImportInput._();

  factory DescribeImportInput.fromRequest(
    DescribeImportInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DescribeImportInput>> serializers = [
    DescribeImportInputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeImportInputBuilder b) {}

  /// The Amazon Resource Name (ARN) associated with the table you're importing to.
  String get importArn;
  @override
  DescribeImportInput getPayload() => this;
  @override
  List<Object?> get props => [importArn];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeImportInput')
      ..add(
        'importArn',
        importArn,
      );
    return helper.toString();
  }
}

class DescribeImportInputAwsJson10Serializer
    extends _i1.StructuredSmithySerializer<DescribeImportInput> {
  const DescribeImportInputAwsJson10Serializer() : super('DescribeImportInput');

  @override
  Iterable<Type> get types => const [
        DescribeImportInput,
        _$DescribeImportInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  DescribeImportInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeImportInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ImportArn':
          result.importArn = (serializers.deserialize(
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
    DescribeImportInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final DescribeImportInput(:importArn) = object;
    result$.addAll([
      'ImportArn',
      serializers.serialize(
        importArn,
        specifiedType: const FullType(String),
      ),
    ]);
    return result$;
  }
}
