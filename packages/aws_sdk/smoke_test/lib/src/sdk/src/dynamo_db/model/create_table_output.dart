// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.dynamo_db.model.create_table_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/table_description.dart'
    as _i2;

part 'create_table_output.g.dart';

/// Represents the output of a `CreateTable` operation.
abstract class CreateTableOutput
    with _i1.AWSEquatable<CreateTableOutput>
    implements Built<CreateTableOutput, CreateTableOutputBuilder> {
  /// Represents the output of a `CreateTable` operation.
  factory CreateTableOutput({_i2.TableDescription? tableDescription}) {
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

  static const List<_i3.SmithySerializer> serializers = [
    CreateTableOutputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateTableOutputBuilder b) {}

  /// Represents the properties of the table.
  _i2.TableDescription? get tableDescription;
  @override
  List<Object?> get props => [tableDescription];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateTableOutput');
    helper.add(
      'tableDescription',
      tableDescription,
    );
    return helper.toString();
  }
}

class CreateTableOutputAwsJson10Serializer
    extends _i3.StructuredSmithySerializer<CreateTableOutput> {
  const CreateTableOutputAwsJson10Serializer() : super('CreateTableOutput');

  @override
  Iterable<Type> get types => const [
        CreateTableOutput,
        _$CreateTableOutput,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
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
    final payload = (object as CreateTableOutput);
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
