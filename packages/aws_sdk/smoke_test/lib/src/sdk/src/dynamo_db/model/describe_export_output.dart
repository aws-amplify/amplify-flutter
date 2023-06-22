// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.dynamo_db.model.describe_export_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/export_description.dart'
    as _i2;

part 'describe_export_output.g.dart';

abstract class DescribeExportOutput
    with _i1.AWSEquatable<DescribeExportOutput>
    implements Built<DescribeExportOutput, DescribeExportOutputBuilder> {
  factory DescribeExportOutput({_i2.ExportDescription? exportDescription}) {
    return _$DescribeExportOutput._(exportDescription: exportDescription);
  }

  factory DescribeExportOutput.build(
          [void Function(DescribeExportOutputBuilder) updates]) =
      _$DescribeExportOutput;

  const DescribeExportOutput._();

  /// Constructs a [DescribeExportOutput] from a [payload] and [response].
  factory DescribeExportOutput.fromResponse(
    DescribeExportOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DescribeExportOutput>> serializers = [
    DescribeExportOutputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeExportOutputBuilder b) {}

  /// Represents the properties of the export.
  _i2.ExportDescription? get exportDescription;
  @override
  List<Object?> get props => [exportDescription];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeExportOutput')
      ..add(
        'exportDescription',
        exportDescription,
      );
    return helper.toString();
  }
}

class DescribeExportOutputAwsJson10Serializer
    extends _i3.StructuredSmithySerializer<DescribeExportOutput> {
  const DescribeExportOutputAwsJson10Serializer()
      : super('DescribeExportOutput');

  @override
  Iterable<Type> get types => const [
        DescribeExportOutput,
        _$DescribeExportOutput,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  DescribeExportOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeExportOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ExportDescription':
          result.exportDescription.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.ExportDescription),
          ) as _i2.ExportDescription));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeExportOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final DescribeExportOutput(:exportDescription) = object;
    if (exportDescription != null) {
      result$
        ..add('ExportDescription')
        ..add(serializers.serialize(
          exportDescription,
          specifiedType: const FullType(_i2.ExportDescription),
        ));
    }
    return result$;
  }
}
