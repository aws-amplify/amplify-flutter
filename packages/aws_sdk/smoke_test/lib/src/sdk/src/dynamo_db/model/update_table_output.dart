// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.dynamo_db.model.update_table_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/table_description.dart'
    as _i2;

part 'update_table_output.g.dart';

/// Represents the output of an `UpdateTable` operation.
abstract class UpdateTableOutput
    with _i1.AWSEquatable<UpdateTableOutput>
    implements Built<UpdateTableOutput, UpdateTableOutputBuilder> {
  /// Represents the output of an `UpdateTable` operation.
  factory UpdateTableOutput({_i2.TableDescription? tableDescription}) {
    return _$UpdateTableOutput._(tableDescription: tableDescription);
  }

  /// Represents the output of an `UpdateTable` operation.
  factory UpdateTableOutput.build(
      [void Function(UpdateTableOutputBuilder) updates]) = _$UpdateTableOutput;

  const UpdateTableOutput._();

  /// Constructs a [UpdateTableOutput] from a [payload] and [response].
  factory UpdateTableOutput.fromResponse(
    UpdateTableOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<UpdateTableOutput>> serializers = [
    UpdateTableOutputAwsJson10Serializer()
  ];

  /// Represents the properties of the table.
  _i2.TableDescription? get tableDescription;
  @override
  List<Object?> get props => [tableDescription];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UpdateTableOutput')
      ..add(
        'tableDescription',
        tableDescription,
      );
    return helper.toString();
  }
}

class UpdateTableOutputAwsJson10Serializer
    extends _i3.StructuredSmithySerializer<UpdateTableOutput> {
  const UpdateTableOutputAwsJson10Serializer() : super('UpdateTableOutput');

  @override
  Iterable<Type> get types => const [
        UpdateTableOutput,
        _$UpdateTableOutput,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  UpdateTableOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateTableOutputBuilder();
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
    UpdateTableOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final UpdateTableOutput(:tableDescription) = object;
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
