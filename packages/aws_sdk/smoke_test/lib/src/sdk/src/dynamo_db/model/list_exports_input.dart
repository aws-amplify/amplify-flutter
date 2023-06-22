// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.dynamo_db.model.list_exports_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'list_exports_input.g.dart';

abstract class ListExportsInput
    with _i1.HttpInput<ListExportsInput>, _i2.AWSEquatable<ListExportsInput>
    implements Built<ListExportsInput, ListExportsInputBuilder> {
  factory ListExportsInput({
    String? tableArn,
    int? maxResults,
    String? nextToken,
  }) {
    return _$ListExportsInput._(
      tableArn: tableArn,
      maxResults: maxResults,
      nextToken: nextToken,
    );
  }

  factory ListExportsInput.build(
      [void Function(ListExportsInputBuilder) updates]) = _$ListExportsInput;

  const ListExportsInput._();

  factory ListExportsInput.fromRequest(
    ListExportsInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<ListExportsInput>> serializers = [
    ListExportsInputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListExportsInputBuilder b) {}

  /// The Amazon Resource Name (ARN) associated with the exported table.
  String? get tableArn;

  /// Maximum number of results to return per page.
  int? get maxResults;

  /// An optional string that, if supplied, must be copied from the output of a previous call to `ListExports`. When provided in this manner, the API fetches the next page of results.
  String? get nextToken;
  @override
  ListExportsInput getPayload() => this;
  @override
  List<Object?> get props => [
        tableArn,
        maxResults,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ListExportsInput')
      ..add(
        'tableArn',
        tableArn,
      )
      ..add(
        'maxResults',
        maxResults,
      )
      ..add(
        'nextToken',
        nextToken,
      );
    return helper.toString();
  }
}

class ListExportsInputAwsJson10Serializer
    extends _i1.StructuredSmithySerializer<ListExportsInput> {
  const ListExportsInputAwsJson10Serializer() : super('ListExportsInput');

  @override
  Iterable<Type> get types => const [
        ListExportsInput,
        _$ListExportsInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  ListExportsInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListExportsInputBuilder();
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
        case 'MaxResults':
          result.maxResults = (serializers.deserialize(
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
    ListExportsInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final ListExportsInput(:tableArn, :maxResults, :nextToken) = object;
    if (tableArn != null) {
      result$
        ..add('TableArn')
        ..add(serializers.serialize(
          tableArn,
          specifiedType: const FullType(String),
        ));
    }
    if (maxResults != null) {
      result$
        ..add('MaxResults')
        ..add(serializers.serialize(
          maxResults,
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
