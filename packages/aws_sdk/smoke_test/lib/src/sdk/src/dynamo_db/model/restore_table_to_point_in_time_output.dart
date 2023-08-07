// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.dynamo_db.model.restore_table_to_point_in_time_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/table_description.dart';

part 'restore_table_to_point_in_time_output.g.dart';

abstract class RestoreTableToPointInTimeOutput
    with
        _i1.AWSEquatable<RestoreTableToPointInTimeOutput>
    implements
        Built<RestoreTableToPointInTimeOutput,
            RestoreTableToPointInTimeOutputBuilder> {
  factory RestoreTableToPointInTimeOutput(
      {TableDescription? tableDescription}) {
    return _$RestoreTableToPointInTimeOutput._(
        tableDescription: tableDescription);
  }

  factory RestoreTableToPointInTimeOutput.build(
          [void Function(RestoreTableToPointInTimeOutputBuilder) updates]) =
      _$RestoreTableToPointInTimeOutput;

  const RestoreTableToPointInTimeOutput._();

  /// Constructs a [RestoreTableToPointInTimeOutput] from a [payload] and [response].
  factory RestoreTableToPointInTimeOutput.fromResponse(
    RestoreTableToPointInTimeOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<RestoreTableToPointInTimeOutput>>
      serializers = [RestoreTableToPointInTimeOutputAwsJson10Serializer()];

  /// Represents the properties of a table.
  TableDescription? get tableDescription;
  @override
  List<Object?> get props => [tableDescription];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('RestoreTableToPointInTimeOutput')
          ..add(
            'tableDescription',
            tableDescription,
          );
    return helper.toString();
  }
}

class RestoreTableToPointInTimeOutputAwsJson10Serializer
    extends _i2.StructuredSmithySerializer<RestoreTableToPointInTimeOutput> {
  const RestoreTableToPointInTimeOutputAwsJson10Serializer()
      : super('RestoreTableToPointInTimeOutput');

  @override
  Iterable<Type> get types => const [
        RestoreTableToPointInTimeOutput,
        _$RestoreTableToPointInTimeOutput,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  RestoreTableToPointInTimeOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RestoreTableToPointInTimeOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'TableDescription':
          result.tableDescription.replace((serializers.deserialize(
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
    RestoreTableToPointInTimeOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final RestoreTableToPointInTimeOutput(:tableDescription) = object;
    if (tableDescription != null) {
      result$
        ..add('TableDescription')
        ..add(serializers.serialize(
          tableDescription,
          specifiedType: const FullType(TableDescription),
        ));
    }
    return result$;
  }
}
