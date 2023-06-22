// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.dynamo_db.model.input_format_options; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/csv_options.dart' as _i2;

part 'input_format_options.g.dart';

/// The format options for the data that was imported into the target table. There is one value, CsvOption.
abstract class InputFormatOptions
    with _i1.AWSEquatable<InputFormatOptions>
    implements Built<InputFormatOptions, InputFormatOptionsBuilder> {
  /// The format options for the data that was imported into the target table. There is one value, CsvOption.
  factory InputFormatOptions({_i2.CsvOptions? csv}) {
    return _$InputFormatOptions._(csv: csv);
  }

  /// The format options for the data that was imported into the target table. There is one value, CsvOption.
  factory InputFormatOptions.build(
          [void Function(InputFormatOptionsBuilder) updates]) =
      _$InputFormatOptions;

  const InputFormatOptions._();

  static const List<_i3.SmithySerializer<InputFormatOptions>> serializers = [
    InputFormatOptionsAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InputFormatOptionsBuilder b) {}

  /// The options for imported source files in CSV format. The values are Delimiter and HeaderList.
  _i2.CsvOptions? get csv;
  @override
  List<Object?> get props => [csv];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('InputFormatOptions')
      ..add(
        'csv',
        csv,
      );
    return helper.toString();
  }
}

class InputFormatOptionsAwsJson10Serializer
    extends _i3.StructuredSmithySerializer<InputFormatOptions> {
  const InputFormatOptionsAwsJson10Serializer() : super('InputFormatOptions');

  @override
  Iterable<Type> get types => const [
        InputFormatOptions,
        _$InputFormatOptions,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  InputFormatOptions deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InputFormatOptionsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Csv':
          result.csv.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.CsvOptions),
          ) as _i2.CsvOptions));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    InputFormatOptions object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final InputFormatOptions(:csv) = object;
    if (csv != null) {
      result$
        ..add('Csv')
        ..add(serializers.serialize(
          csv,
          specifiedType: const FullType(_i2.CsvOptions),
        ));
    }
    return result$;
  }
}
