// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.dynamo_db.model.describe_table_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/table_description.dart'
    as _i2;

part 'describe_table_output.g.dart';

/// Represents the output of a `DescribeTable` operation.
abstract class DescribeTableOutput
    with _i1.AWSEquatable<DescribeTableOutput>
    implements Built<DescribeTableOutput, DescribeTableOutputBuilder> {
  /// Represents the output of a `DescribeTable` operation.
  factory DescribeTableOutput({_i2.TableDescription? table}) {
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

  static const List<_i3.SmithySerializer> serializers = [
    DescribeTableOutputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeTableOutputBuilder b) {}

  /// The properties of the table.
  _i2.TableDescription? get table;
  @override
  List<Object?> get props => [table];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeTableOutput');
    helper.add(
      'table',
      table,
    );
    return helper.toString();
  }
}

class DescribeTableOutputAwsJson10Serializer
    extends _i3.StructuredSmithySerializer<DescribeTableOutput> {
  const DescribeTableOutputAwsJson10Serializer() : super('DescribeTableOutput');

  @override
  Iterable<Type> get types => const [
        DescribeTableOutput,
        _$DescribeTableOutput,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
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
      switch (key) {
        case 'Table':
          if (value != null) {
            result.table.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.TableDescription),
            ) as _i2.TableDescription));
          }
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
    final payload = (object as DescribeTableOutput);
    final result = <Object?>[];
    if (payload.table != null) {
      result
        ..add('Table')
        ..add(serializers.serialize(
          payload.table!,
          specifiedType: const FullType(_i2.TableDescription),
        ));
    }
    return result;
  }
}
