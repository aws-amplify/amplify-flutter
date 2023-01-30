// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.dynamo_db.model.delete_table_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/table_description.dart'
    as _i2;

part 'delete_table_output.g.dart';

/// Represents the output of a `DeleteTable` operation.
abstract class DeleteTableOutput
    with _i1.AWSEquatable<DeleteTableOutput>
    implements Built<DeleteTableOutput, DeleteTableOutputBuilder> {
  /// Represents the output of a `DeleteTable` operation.
  factory DeleteTableOutput({_i2.TableDescription? tableDescription}) {
    return _$DeleteTableOutput._(tableDescription: tableDescription);
  }

  /// Represents the output of a `DeleteTable` operation.
  factory DeleteTableOutput.build(
      [void Function(DeleteTableOutputBuilder) updates]) = _$DeleteTableOutput;

  const DeleteTableOutput._();

  /// Constructs a [DeleteTableOutput] from a [payload] and [response].
  factory DeleteTableOutput.fromResponse(
    DeleteTableOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    DeleteTableOutputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteTableOutputBuilder b) {}

  /// Represents the properties of a table.
  _i2.TableDescription? get tableDescription;
  @override
  List<Object?> get props => [tableDescription];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteTableOutput');
    helper.add(
      'tableDescription',
      tableDescription,
    );
    return helper.toString();
  }
}

class DeleteTableOutputAwsJson10Serializer
    extends _i3.StructuredSmithySerializer<DeleteTableOutput> {
  const DeleteTableOutputAwsJson10Serializer() : super('DeleteTableOutput');

  @override
  Iterable<Type> get types => const [
        DeleteTableOutput,
        _$DeleteTableOutput,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  DeleteTableOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteTableOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'TableDescription':
          if (value != null) {
            result.tableDescription.replace((serializers.deserialize(
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
    final payload = (object as DeleteTableOutput);
    final result = <Object?>[];
    if (payload.tableDescription != null) {
      result
        ..add('TableDescription')
        ..add(serializers.serialize(
          payload.tableDescription!,
          specifiedType: const FullType(_i2.TableDescription),
        ));
    }
    return result;
  }
}
