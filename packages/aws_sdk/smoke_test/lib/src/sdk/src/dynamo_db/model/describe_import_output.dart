// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.dynamo_db.model.describe_import_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/import_table_description.dart'
    as _i2;

part 'describe_import_output.g.dart';

abstract class DescribeImportOutput
    with _i1.AWSEquatable<DescribeImportOutput>
    implements Built<DescribeImportOutput, DescribeImportOutputBuilder> {
  factory DescribeImportOutput(
      {required _i2.ImportTableDescription importTableDescription}) {
    return _$DescribeImportOutput._(
        importTableDescription: importTableDescription);
  }

  factory DescribeImportOutput.build(
          [void Function(DescribeImportOutputBuilder) updates]) =
      _$DescribeImportOutput;

  const DescribeImportOutput._();

  /// Constructs a [DescribeImportOutput] from a [payload] and [response].
  factory DescribeImportOutput.fromResponse(
    DescribeImportOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DescribeImportOutput>> serializers = [
    DescribeImportOutputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeImportOutputBuilder b) {}

  /// Represents the properties of the table created for the import, and parameters of the import. The import parameters include import status, how many items were processed, and how many errors were encountered.
  _i2.ImportTableDescription get importTableDescription;
  @override
  List<Object?> get props => [importTableDescription];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeImportOutput')
      ..add(
        'importTableDescription',
        importTableDescription,
      );
    return helper.toString();
  }
}

class DescribeImportOutputAwsJson10Serializer
    extends _i3.StructuredSmithySerializer<DescribeImportOutput> {
  const DescribeImportOutputAwsJson10Serializer()
      : super('DescribeImportOutput');

  @override
  Iterable<Type> get types => const [
        DescribeImportOutput,
        _$DescribeImportOutput,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  DescribeImportOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeImportOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ImportTableDescription':
          result.importTableDescription.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.ImportTableDescription),
          ) as _i2.ImportTableDescription));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeImportOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final DescribeImportOutput(:importTableDescription) = object;
    result$.addAll([
      'ImportTableDescription',
      serializers.serialize(
        importTableDescription,
        specifiedType: const FullType(_i2.ImportTableDescription),
      ),
    ]);
    return result$;
  }
}
