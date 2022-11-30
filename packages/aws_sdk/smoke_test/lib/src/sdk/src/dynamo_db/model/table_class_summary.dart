// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.dynamo_db.model.table_class_summary; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/table_class.dart' as _i2;

part 'table_class_summary.g.dart';

/// Contains details of the table class.
abstract class TableClassSummary
    with _i1.AWSEquatable<TableClassSummary>
    implements Built<TableClassSummary, TableClassSummaryBuilder> {
  /// Contains details of the table class.
  factory TableClassSummary({
    DateTime? lastUpdateDateTime,
    _i2.TableClass? tableClass,
  }) {
    return _$TableClassSummary._(
      lastUpdateDateTime: lastUpdateDateTime,
      tableClass: tableClass,
    );
  }

  /// Contains details of the table class.
  factory TableClassSummary.build(
      [void Function(TableClassSummaryBuilder) updates]) = _$TableClassSummary;

  const TableClassSummary._();

  static const List<_i3.SmithySerializer> serializers = [
    TableClassSummaryAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TableClassSummaryBuilder b) {}

  /// The date and time at which the table class was last updated.
  DateTime? get lastUpdateDateTime;

  /// The table class of the specified table. Valid values are `STANDARD` and `STANDARD\_INFREQUENT\_ACCESS`.
  _i2.TableClass? get tableClass;
  @override
  List<Object?> get props => [
        lastUpdateDateTime,
        tableClass,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TableClassSummary');
    helper.add(
      'lastUpdateDateTime',
      lastUpdateDateTime,
    );
    helper.add(
      'tableClass',
      tableClass,
    );
    return helper.toString();
  }
}

class TableClassSummaryAwsJson10Serializer
    extends _i3.StructuredSmithySerializer<TableClassSummary> {
  const TableClassSummaryAwsJson10Serializer() : super('TableClassSummary');

  @override
  Iterable<Type> get types => const [
        TableClassSummary,
        _$TableClassSummary,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  TableClassSummary deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TableClassSummaryBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'LastUpdateDateTime':
          if (value != null) {
            result.lastUpdateDateTime = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'TableClass':
          if (value != null) {
            result.tableClass = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.TableClass),
            ) as _i2.TableClass);
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
    final payload = (object as TableClassSummary);
    final result = <Object?>[];
    if (payload.lastUpdateDateTime != null) {
      result
        ..add('LastUpdateDateTime')
        ..add(serializers.serialize(
          payload.lastUpdateDateTime!,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (payload.tableClass != null) {
      result
        ..add('TableClass')
        ..add(serializers.serialize(
          payload.tableClass!,
          specifiedType: const FullType(_i2.TableClass),
        ));
    }
    return result;
  }
}
