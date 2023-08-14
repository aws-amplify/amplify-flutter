// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.dynamo_db.model.list_exports_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/export_summary.dart';

part 'list_exports_output.g.dart';

abstract class ListExportsOutput
    with _i1.AWSEquatable<ListExportsOutput>
    implements Built<ListExportsOutput, ListExportsOutputBuilder> {
  factory ListExportsOutput({
    List<ExportSummary>? exportSummaries,
    String? nextToken,
  }) {
    return _$ListExportsOutput._(
      exportSummaries:
          exportSummaries == null ? null : _i2.BuiltList(exportSummaries),
      nextToken: nextToken,
    );
  }

  factory ListExportsOutput.build(
      [void Function(ListExportsOutputBuilder) updates]) = _$ListExportsOutput;

  const ListExportsOutput._();

  /// Constructs a [ListExportsOutput] from a [payload] and [response].
  factory ListExportsOutput.fromResponse(
    ListExportsOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<ListExportsOutput>> serializers = [
    ListExportsOutputAwsJson10Serializer()
  ];

  /// A list of `ExportSummary` objects.
  _i2.BuiltList<ExportSummary>? get exportSummaries;

  /// If this value is returned, there are additional results to be displayed. To retrieve them, call `ListExports` again, with `NextToken` set to this value.
  String? get nextToken;
  @override
  List<Object?> get props => [
        exportSummaries,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ListExportsOutput')
      ..add(
        'exportSummaries',
        exportSummaries,
      )
      ..add(
        'nextToken',
        nextToken,
      );
    return helper.toString();
  }
}

class ListExportsOutputAwsJson10Serializer
    extends _i3.StructuredSmithySerializer<ListExportsOutput> {
  const ListExportsOutputAwsJson10Serializer() : super('ListExportsOutput');

  @override
  Iterable<Type> get types => const [
        ListExportsOutput,
        _$ListExportsOutput,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  ListExportsOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListExportsOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ExportSummaries':
          result.exportSummaries.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(ExportSummary)],
            ),
          ) as _i2.BuiltList<ExportSummary>));
        case 'NextToken':
          result.nextToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ListExportsOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final ListExportsOutput(:exportSummaries, :nextToken) = object;
    if (exportSummaries != null) {
      result$
        ..add('ExportSummaries')
        ..add(serializers.serialize(
          exportSummaries,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(ExportSummary)],
          ),
        ));
    }
    if (nextToken != null) {
      result$
        ..add('NextToken')
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
