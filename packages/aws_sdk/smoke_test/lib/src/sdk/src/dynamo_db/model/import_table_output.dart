// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.dynamo_db.model.import_table_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/import_table_description.dart'
    as _i2;

part 'import_table_output.g.dart';

abstract class ImportTableOutput
    with _i1.AWSEquatable<ImportTableOutput>
    implements Built<ImportTableOutput, ImportTableOutputBuilder> {
  factory ImportTableOutput(
      {required _i2.ImportTableDescription importTableDescription}) {
    return _$ImportTableOutput._(
        importTableDescription: importTableDescription);
  }

  factory ImportTableOutput.build(
      [void Function(ImportTableOutputBuilder) updates]) = _$ImportTableOutput;

  const ImportTableOutput._();

  /// Constructs a [ImportTableOutput] from a [payload] and [response].
  factory ImportTableOutput.fromResponse(
    ImportTableOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    ImportTableOutputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ImportTableOutputBuilder b) {}

  /// Represents the properties of the table created for the import, and parameters of the import. The import parameters include import status, how many items were processed, and how many errors were encountered.
  _i2.ImportTableDescription get importTableDescription;
  @override
  List<Object?> get props => [importTableDescription];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ImportTableOutput');
    helper.add(
      'importTableDescription',
      importTableDescription,
    );
    return helper.toString();
  }
}

class ImportTableOutputAwsJson10Serializer
    extends _i3.StructuredSmithySerializer<ImportTableOutput> {
  const ImportTableOutputAwsJson10Serializer() : super('ImportTableOutput');

  @override
  Iterable<Type> get types => const [
        ImportTableOutput,
        _$ImportTableOutput,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  ImportTableOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ImportTableOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'ImportTableDescription':
          result.importTableDescription.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.ImportTableDescription),
          ) as _i2.ImportTableDescription));
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
    final payload = (object as ImportTableOutput);
    final result = <Object?>[
      'ImportTableDescription',
      serializers.serialize(
        payload.importTableDescription,
        specifiedType: const FullType(_i2.ImportTableDescription),
      ),
    ];
    return result;
  }
}
