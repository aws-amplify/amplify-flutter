// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

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
    _i2.TableClass? tableClass,
    DateTime? lastUpdateDateTime,
  }) {
    return _$TableClassSummary._(
      tableClass: tableClass,
      lastUpdateDateTime: lastUpdateDateTime,
    );
  }

  /// Contains details of the table class.
  factory TableClassSummary.build(
      [void Function(TableClassSummaryBuilder) updates]) = _$TableClassSummary;

  const TableClassSummary._();

  static const List<_i3.SmithySerializer<TableClassSummary>> serializers = [
    TableClassSummaryAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TableClassSummaryBuilder b) {}

  /// The table class of the specified table. Valid values are `STANDARD` and `STANDARD\_INFREQUENT\_ACCESS`.
  _i2.TableClass? get tableClass;

  /// The date and time at which the table class was last updated.
  DateTime? get lastUpdateDateTime;
  @override
  List<Object?> get props => [
        tableClass,
        lastUpdateDateTime,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TableClassSummary')
      ..add(
        'tableClass',
        tableClass,
      )
      ..add(
        'lastUpdateDateTime',
        lastUpdateDateTime,
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
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'TableClass':
          result.tableClass = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.TableClass),
          ) as _i2.TableClass);
        case 'LastUpdateDateTime':
          result.lastUpdateDateTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    TableClassSummary object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final TableClassSummary(:tableClass, :lastUpdateDateTime) = object;
    if (tableClass != null) {
      result$
        ..add('TableClass')
        ..add(serializers.serialize(
          tableClass,
          specifiedType: const FullType(_i2.TableClass),
        ));
    }
    if (lastUpdateDateTime != null) {
      result$
        ..add('LastUpdateDateTime')
        ..add(serializers.serialize(
          lastUpdateDateTime,
          specifiedType: const FullType(DateTime),
        ));
    }
    return result$;
  }
}
