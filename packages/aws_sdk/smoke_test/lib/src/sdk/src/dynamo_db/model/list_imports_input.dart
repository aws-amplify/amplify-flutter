// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.dynamo_db.model.list_imports_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'list_imports_input.g.dart';

abstract class ListImportsInput
    with _i1.HttpInput<ListImportsInput>, _i2.AWSEquatable<ListImportsInput>
    implements Built<ListImportsInput, ListImportsInputBuilder> {
  factory ListImportsInput({
    String? tableArn,
    int? pageSize,
    String? nextToken,
  }) {
    return _$ListImportsInput._(
      tableArn: tableArn,
      pageSize: pageSize,
      nextToken: nextToken,
    );
  }

  factory ListImportsInput.build(
      [void Function(ListImportsInputBuilder) updates]) = _$ListImportsInput;

  const ListImportsInput._();

  factory ListImportsInput.fromRequest(
    ListImportsInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<ListImportsInput>> serializers = [
    ListImportsInputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListImportsInputBuilder b) {}

  /// The Amazon Resource Name (ARN) associated with the table that was imported to.
  String? get tableArn;

  /// The number of `ImportSummary` objects returned in a single page.
  int? get pageSize;

  /// An optional string that, if supplied, must be copied from the output of a previous call to `ListImports`. When provided in this manner, the API fetches the next page of results.
  String? get nextToken;
  @override
  ListImportsInput getPayload() => this;
  @override
  List<Object?> get props => [
        tableArn,
        pageSize,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ListImportsInput')
      ..add(
        'tableArn',
        tableArn,
      )
      ..add(
        'pageSize',
        pageSize,
      )
      ..add(
        'nextToken',
        nextToken,
      );
    return helper.toString();
  }
}

class ListImportsInputAwsJson10Serializer
    extends _i1.StructuredSmithySerializer<ListImportsInput> {
  const ListImportsInputAwsJson10Serializer() : super('ListImportsInput');

  @override
  Iterable<Type> get types => const [
        ListImportsInput,
        _$ListImportsInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  ListImportsInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListImportsInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'TableArn':
          result.tableArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'PageSize':
          result.pageSize = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
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
    ListImportsInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final ListImportsInput(:tableArn, :pageSize, :nextToken) = object;
    if (tableArn != null) {
      result$
        ..add('TableArn')
        ..add(serializers.serialize(
          tableArn,
          specifiedType: const FullType(String),
        ));
    }
    if (pageSize != null) {
      result$
        ..add('PageSize')
        ..add(serializers.serialize(
          pageSize,
          specifiedType: const FullType(int),
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
