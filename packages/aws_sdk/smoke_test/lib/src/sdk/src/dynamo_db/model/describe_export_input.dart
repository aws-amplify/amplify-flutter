// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.dynamo_db.model.describe_export_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'describe_export_input.g.dart';

abstract class DescribeExportInput
    with
        _i1.HttpInput<DescribeExportInput>,
        _i2.AWSEquatable<DescribeExportInput>
    implements Built<DescribeExportInput, DescribeExportInputBuilder> {
  factory DescribeExportInput({required String exportArn}) {
    return _$DescribeExportInput._(exportArn: exportArn);
  }

  factory DescribeExportInput.build(
          [void Function(DescribeExportInputBuilder) updates]) =
      _$DescribeExportInput;

  const DescribeExportInput._();

  factory DescribeExportInput.fromRequest(
    DescribeExportInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DescribeExportInputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeExportInputBuilder b) {}

  /// The Amazon Resource Name (ARN) associated with the export.
  String get exportArn;
  @override
  DescribeExportInput getPayload() => this;
  @override
  List<Object?> get props => [exportArn];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeExportInput');
    helper.add(
      'exportArn',
      exportArn,
    );
    return helper.toString();
  }
}

class DescribeExportInputAwsJson10Serializer
    extends _i1.StructuredSmithySerializer<DescribeExportInput> {
  const DescribeExportInputAwsJson10Serializer() : super('DescribeExportInput');

  @override
  Iterable<Type> get types => const [
        DescribeExportInput,
        _$DescribeExportInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  DescribeExportInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeExportInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'ExportArn':
          result.exportArn = (serializers.deserialize(
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
    final payload = (object as DescribeExportInput);
    final result = <Object?>[
      'ExportArn',
      serializers.serialize(
        payload.exportArn,
        specifiedType: const FullType(String),
      ),
    ];
    return result;
  }
}
