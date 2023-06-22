// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.dynamo_db.model.csv_options; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'csv_options.g.dart';

/// Processing options for the CSV file being imported.
abstract class CsvOptions
    with _i1.AWSEquatable<CsvOptions>
    implements Built<CsvOptions, CsvOptionsBuilder> {
  /// Processing options for the CSV file being imported.
  factory CsvOptions({
    String? delimiter,
    List<String>? headerList,
  }) {
    return _$CsvOptions._(
      delimiter: delimiter,
      headerList: headerList == null ? null : _i2.BuiltList(headerList),
    );
  }

  /// Processing options for the CSV file being imported.
  factory CsvOptions.build([void Function(CsvOptionsBuilder) updates]) =
      _$CsvOptions;

  const CsvOptions._();

  static const List<_i3.SmithySerializer<CsvOptions>> serializers = [
    CsvOptionsAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CsvOptionsBuilder b) {}

  /// The delimiter used for separating items in the CSV file being imported.
  String? get delimiter;

  /// List of the headers used to specify a common header for all source CSV files being imported. If this field is specified then the first line of each CSV file is treated as data instead of the header. If this field is not specified the the first line of each CSV file is treated as the header.
  _i2.BuiltList<String>? get headerList;
  @override
  List<Object?> get props => [
        delimiter,
        headerList,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CsvOptions')
      ..add(
        'delimiter',
        delimiter,
      )
      ..add(
        'headerList',
        headerList,
      );
    return helper.toString();
  }
}

class CsvOptionsAwsJson10Serializer
    extends _i3.StructuredSmithySerializer<CsvOptions> {
  const CsvOptionsAwsJson10Serializer() : super('CsvOptions');

  @override
  Iterable<Type> get types => const [
        CsvOptions,
        _$CsvOptions,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  CsvOptions deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CsvOptionsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Delimiter':
          result.delimiter = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'HeaderList':
          result.headerList.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(String)],
            ),
          ) as _i2.BuiltList<String>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CsvOptions object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final CsvOptions(:delimiter, :headerList) = object;
    if (delimiter != null) {
      result$
        ..add('Delimiter')
        ..add(serializers.serialize(
          delimiter,
          specifiedType: const FullType(String),
        ));
    }
    if (headerList != null) {
      result$
        ..add('HeaderList')
        ..add(serializers.serialize(
          headerList,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    return result$;
  }
}
