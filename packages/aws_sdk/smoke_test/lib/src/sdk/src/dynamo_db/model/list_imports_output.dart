// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.dynamo_db.model.list_imports_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/import_summary.dart'
    as _i2;

part 'list_imports_output.g.dart';

abstract class ListImportsOutput
    with _i1.AWSEquatable<ListImportsOutput>
    implements Built<ListImportsOutput, ListImportsOutputBuilder> {
  factory ListImportsOutput({
    List<_i2.ImportSummary>? importSummaryList,
    String? nextToken,
  }) {
    return _$ListImportsOutput._(
      importSummaryList:
          importSummaryList == null ? null : _i3.BuiltList(importSummaryList),
      nextToken: nextToken,
    );
  }

  factory ListImportsOutput.build(
      [void Function(ListImportsOutputBuilder) updates]) = _$ListImportsOutput;

  const ListImportsOutput._();

  /// Constructs a [ListImportsOutput] from a [payload] and [response].
  factory ListImportsOutput.fromResponse(
    ListImportsOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer<ListImportsOutput>> serializers = [
    ListImportsOutputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListImportsOutputBuilder b) {}

  /// A list of `ImportSummary` objects.
  _i3.BuiltList<_i2.ImportSummary>? get importSummaryList;

  /// If this value is returned, there are additional results to be displayed. To retrieve them, call `ListImports` again, with `NextToken` set to this value.
  String? get nextToken;
  @override
  List<Object?> get props => [
        importSummaryList,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ListImportsOutput')
      ..add(
        'importSummaryList',
        importSummaryList,
      )
      ..add(
        'nextToken',
        nextToken,
      );
    return helper.toString();
  }
}

class ListImportsOutputAwsJson10Serializer
    extends _i4.StructuredSmithySerializer<ListImportsOutput> {
  const ListImportsOutputAwsJson10Serializer() : super('ListImportsOutput');

  @override
  Iterable<Type> get types => const [
        ListImportsOutput,
        _$ListImportsOutput,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  ListImportsOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListImportsOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ImportSummaryList':
          result.importSummaryList.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(_i2.ImportSummary)],
            ),
          ) as _i3.BuiltList<_i2.ImportSummary>));
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
    ListImportsOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final ListImportsOutput(:importSummaryList, :nextToken) = object;
    if (importSummaryList != null) {
      result$
        ..add('ImportSummaryList')
        ..add(serializers.serialize(
          importSummaryList,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(_i2.ImportSummary)],
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
