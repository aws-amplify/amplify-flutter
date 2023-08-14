// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.dynamo_db.model.create_table_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/table_description.dart';

part 'create_table_output.g.dart';

/// Represents the output of a `CreateTable` operation.
abstract class CreateTableOutput
    with _i1.AWSEquatable<CreateTableOutput>
    implements Built<CreateTableOutput, CreateTableOutputBuilder> {
  /// Represents the output of a `CreateTable` operation.
  factory CreateTableOutput({TableDescription? tableDescription}) {
    return _$CreateTableOutput._(tableDescription: tableDescription);
  }

  /// Represents the output of a `CreateTable` operation.
  factory CreateTableOutput.build(
      [void Function(CreateTableOutputBuilder) updates]) = _$CreateTableOutput;

  const CreateTableOutput._();

  /// Constructs a [CreateTableOutput] from a [payload] and [response].
  factory CreateTableOutput.fromResponse(
    CreateTableOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<CreateTableOutput>> serializers = [
    CreateTableOutputAwsJson10Serializer()
  ];

  /// Represents the properties of the table.
  TableDescription? get tableDescription;
  @override
  List<Object?> get props => [tableDescription];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateTableOutput')
      ..add(
        'tableDescription',
        tableDescription,
      );
    return helper.toString();
  }
}

class CreateTableOutputAwsJson10Serializer
    extends _i2.StructuredSmithySerializer<CreateTableOutput> {
  const CreateTableOutputAwsJson10Serializer() : super('CreateTableOutput');

  @override
  Iterable<Type> get types => const [
        CreateTableOutput,
        _$CreateTableOutput,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  CreateTableOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateTableOutputBuilder();
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
    CreateTableOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final CreateTableOutput(:tableDescription) = object;
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
