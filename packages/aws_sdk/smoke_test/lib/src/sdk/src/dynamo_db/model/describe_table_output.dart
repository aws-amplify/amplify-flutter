// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.dynamo_db.model.describe_table_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/table_description.dart';

part 'describe_table_output.g.dart';

/// Represents the output of a `DescribeTable` operation.
abstract class DescribeTableOutput
    with _i1.AWSEquatable<DescribeTableOutput>
    implements Built<DescribeTableOutput, DescribeTableOutputBuilder> {
  /// Represents the output of a `DescribeTable` operation.
  factory DescribeTableOutput({TableDescription? table}) {
    return _$DescribeTableOutput._(table: table);
  }

  /// Represents the output of a `DescribeTable` operation.
  factory DescribeTableOutput.build(
          [void Function(DescribeTableOutputBuilder) updates]) =
      _$DescribeTableOutput;

  const DescribeTableOutput._();

  /// Constructs a [DescribeTableOutput] from a [payload] and [response].
  factory DescribeTableOutput.fromResponse(
    DescribeTableOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<DescribeTableOutput>> serializers = [
    DescribeTableOutputAwsJson10Serializer()
  ];

  /// The properties of the table.
  TableDescription? get table;
  @override
  List<Object?> get props => [table];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeTableOutput')
      ..add(
        'table',
        table,
      );
    return helper.toString();
  }
}

class DescribeTableOutputAwsJson10Serializer
    extends _i2.StructuredSmithySerializer<DescribeTableOutput> {
  const DescribeTableOutputAwsJson10Serializer() : super('DescribeTableOutput');

  @override
  Iterable<Type> get types => const [
        DescribeTableOutput,
        _$DescribeTableOutput,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  DescribeTableOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeTableOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Table':
          result.table.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(TableDescription),
          ) as TableDescription));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeTableOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final DescribeTableOutput(:table) = object;
    if (table != null) {
      result$
        ..add('Table')
        ..add(serializers.serialize(
          table,
          specifiedType: const FullType(TableDescription),
        ));
    }
    return result$;
  }
}
