// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.dynamo_db.model.restore_table_from_backup_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/table_description.dart'
    as _i2;

part 'restore_table_from_backup_output.g.dart';

abstract class RestoreTableFromBackupOutput
    with
        _i1.AWSEquatable<RestoreTableFromBackupOutput>
    implements
        Built<RestoreTableFromBackupOutput,
            RestoreTableFromBackupOutputBuilder> {
  factory RestoreTableFromBackupOutput(
      {_i2.TableDescription? tableDescription}) {
    return _$RestoreTableFromBackupOutput._(tableDescription: tableDescription);
  }

  factory RestoreTableFromBackupOutput.build(
          [void Function(RestoreTableFromBackupOutputBuilder) updates]) =
      _$RestoreTableFromBackupOutput;

  const RestoreTableFromBackupOutput._();

  /// Constructs a [RestoreTableFromBackupOutput] from a [payload] and [response].
  factory RestoreTableFromBackupOutput.fromResponse(
    RestoreTableFromBackupOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<RestoreTableFromBackupOutput>>
      serializers = [RestoreTableFromBackupOutputAwsJson10Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RestoreTableFromBackupOutputBuilder b) {}

  /// The description of the table created from an existing backup.
  _i2.TableDescription? get tableDescription;
  @override
  List<Object?> get props => [tableDescription];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('RestoreTableFromBackupOutput')
      ..add(
        'tableDescription',
        tableDescription,
      );
    return helper.toString();
  }
}

class RestoreTableFromBackupOutputAwsJson10Serializer
    extends _i3.StructuredSmithySerializer<RestoreTableFromBackupOutput> {
  const RestoreTableFromBackupOutputAwsJson10Serializer()
      : super('RestoreTableFromBackupOutput');

  @override
  Iterable<Type> get types => const [
        RestoreTableFromBackupOutput,
        _$RestoreTableFromBackupOutput,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  RestoreTableFromBackupOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RestoreTableFromBackupOutputBuilder();
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
            specifiedType: const FullType(_i2.TableDescription),
          ) as _i2.TableDescription));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    RestoreTableFromBackupOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final RestoreTableFromBackupOutput(:tableDescription) = object;
    if (tableDescription != null) {
      result$
        ..add('TableDescription')
        ..add(serializers.serialize(
          tableDescription,
          specifiedType: const FullType(_i2.TableDescription),
        ));
    }
    return result$;
  }
}
